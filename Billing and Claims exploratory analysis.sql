-- Whos the patient with most procedures?
SELECT 
    patientid, COUNT(proceduretype) as amount
FROM
    hospital_billing
GROUP BY 1
ORDER BY 2 DESC;

-- What procedure type and how many?
SELECT DISTINCT
    proceduretype, COUNT(*) as amount
FROM
    hospital_billing
WHERE
    patientid = 1098
GROUP BY 1;

-- How much did all of those cost to the patient?
SELECT 
    SUM(billingamount) AS total_billed
FROM
    hospital_billing
WHERE
    patientid = 1098;

-- How many claims did patient 1098 opened?
SELECT 
    *
FROM
    insurance_claims
WHERE
    patientid = 1098;

-- Just one claim? Did he claimed all of the procedures at once (in 1 claim id)?
SELECT 
    patientid,
    MIN(billingdate) AS first_date,
    MAX(billingdate) AS latest_date,
    (SELECT 
            claimdate
        FROM
            insurance_claims
        WHERE
            patientid = 1098) AS claimdate
FROM
    hospital_billing
WHERE
    PatientID = 1098
GROUP BY 1;

-- Seems like the patient 1098 didn't claim all of them, at least for now. Let's check how many he claimed.
SELECT 
  proceduretype, 
  billingdate, 
  (
    SELECT 
      claimdate 
    FROM 
      insurance_claims 
    WHERE 
      patientid = 1098
  ) AS claimdate, 
  Row_number() OVER () AS List_Num
FROM 
  hospital_billing 
WHERE 
  billingdate BETWEEN (
    SELECT 
      Min(billingdate) 
    FROM 
      hospital_billing 
    WHERE 
      patientid = 1098 
    GROUP BY 
      patientid
  ) 
  AND (
    SELECT 
      Max(billingdate) 
    FROM 
      hospital_billing 
    WHERE 
      patientid = 1098 
    GROUP BY 
      patientid
  ) 
  AND patientid = 1098 
ORDER BY 
  billingdate

-- Key Findings

-- During the analysis, I discovered that:

-- Not all patients in the dataset have submitted claims for all their hospital procedures.

-- Patient #1098 is a clear example — this patient appears in the database but has two unclaimed procedures.

-- This indicates that being listed in the billing database does not guarantee that all procedures have been processed through insurance claims.	