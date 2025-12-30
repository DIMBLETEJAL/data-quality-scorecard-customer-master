# 📊 Customer Master Data Quality Scorecard
Enterprise-Grade Data Quality Architecture & Governance Project

---

## 🔹 Overview
This project implements an end-to-end Data Quality Scorecard for Customer Master Data, designed using enterprise data architecture and governance principles.

The solution measures, monitors, and governs data quality across multiple dimensions, converts technical checks into business-friendly KPIs, and enables ownership-driven remediation.

---

## 🎯 Business Problem
Customer data is ingested from multiple upstream systems such as CRM, ERP, and digital applications.  
Due to inconsistent validations, delayed updates, missing attributes, and duplicate records:

- Analytics and reporting become unreliable  
- Customer communications fail  
- Regulatory and audit risks increase  

The organization requires a standardized Data Quality Scorecard to objectively measure and improve data reliability.

---

## 🧱 Scope & Dataset
- Domain: Customer Master Data  
- Dataset: customer_master  
- Refresh Frequency: Daily  

The sample data intentionally includes real-world quality issues to validate all rules.

---

## 🧩 Critical Data Elements (CDEs)
- customer_id
- email
- phone
- date_of_birth
- gender
- country
- last_updated_ts

---

## 📐 Data Quality Dimensions
- Completeness  
- Validity  
- Uniqueness  
- Timeliness  
- Accuracy (extensible)

---

## 🧪 Data Quality Rules
Rules are implemented using SQL-based checks including:
- Mandatory field completeness
- Format and domain validation
- Duplicate detection
- SLA-based freshness checks

Each rule produces a measurable score.

---

## 🧮 Scoring Methodology
Rule Score = Passed Records / Total Records × 100  
Dimension Score = Average of rule scores  
Final Score = Weighted aggregation aligned to business criticality

---

## 📊 Sample Output
Completeness: 92%  
Validity: 85%  
Uniqueness: 97%  
Timeliness: 78%  

Overall Data Quality Score: 88.1% (Fair – Action Required)

---

## 🏗 Architecture Overview
The architecture follows a layered enterprise design:
1. Source Systems
2. Customer Master Table
3. Data Quality Rule Engine
4. Scoring & Aggregation Layer
5. Executive Dashboard
6. Governance Overlay

---

## 🏛 Governance Framework
Includes:
- Data Quality Rules Catalog
- Severity classification
- SLA thresholds
- Incident & remediation model
- Ownership (Data Owner, Steward, Engineering)

---

## 📁 Repository Structure
architecture/  
data/  
sql/  
scoring/  
dashboard/  
governance/  
docs/

---

## 🚀 Future Enhancements
- Business impact-based scoring
- Automated incident creation
- Metadata & lineage integration
- ML-based anomaly detection

---

## 🎯 Key Skills Demonstrated
- Data Quality Architecture
- SQL Rule Engineering
- Governance & SLA Design
- KPI & Dashboard Design
- Enterprise Documentation

---

## 🧠 Interview Summary
I designed an enterprise-grade data quality scorecard covering rule-level validations, weighted scoring, governance SLAs, and executive dashboards for customer master data.

