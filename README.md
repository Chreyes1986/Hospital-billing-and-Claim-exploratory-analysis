# Hospital Billing and Insurance Claim Analysis

## 📊 Project Overview
This project explores a **hospital billing and insurance claim dataset** to determine whether patients have been fully reimbursed for all their hospital claims.  
The goal was to identify discrepancies between billed procedures and paid claims using **MySQL** for exploratory data analysis.

---

## 🧠 Objective
To analyze hospital billing and insurance claim data to:
- Check if all patient hospital bills have corresponding insurance claims.  
- Identify patients with unclaimed or unpaid procedures.  
- Provide insights into potential billing inefficiencies or missed claims.

---

## 🗂️ Dataset
The dataset contains hospital billing records and insurance claim information, including:
- **Patient ID**
- **Procedure ID**
- **Claim Status**
- **Billing Amounts**
- **Claim Amounts**
- **Payment Dates**

---

## 🧮 Tools Used
- **MySQL** – For exploratory data analysis and querying relationships between billing and claims data.  
- **SQL Joins and Aggregations** – Used to match billed procedures with claim records and highlight missing or incomplete claims.  

---

## 🔍 Key Findings
During the analysis, I discovered that:
- Not all patients in the dataset have submitted claims for all their hospital procedures.
- **Patient #1098** is a clear example — this patient appears in the database but has **two unclaimed procedures**.
- This indicates that being listed in the billing database does not guarantee that all procedures have been processed through insurance claims.

---

## 📈 Insights & Next Steps
- Hospitals could benefit from automated reconciliation between billing and claim systems to reduce missed claims.
- Further analysis could explore the **reasons behind unclaimed procedures**, such as insurance denials, patient inaction, or administrative delays.
- Integrating claim status dashboards could help improve claim completion rates.

---

## ⚙️ How to Use
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/hospital-claims-analysis.git
   ```
2. Import the dataset into your MySQL environment.  
3. Run the SQL scripts in the `queries/` folder to reproduce the analysis.  
4. Review output tables and visual summaries for claim completion insights.

---

## 🧾 Author
**Your Name**  
📧 your.email@example.com  
💼 [LinkedIn Profile or Portfolio Link]
