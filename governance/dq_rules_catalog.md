# Data Quality Rules Catalog – Customer Master

## Purpose
Defines all data quality rules applied to Customer Master data with ownership and severity.

---

## Rule Inventory

| Rule ID | Rule Name | Dimension | Description | Severity | Owner |
|--------|----------|-----------|-------------|----------|-------|
| DQ-001 | email_not_null | Completeness | Email must not be NULL | Critical | Data Steward |
| DQ-002 | phone_not_null | Completeness | Phone must not be NULL | Major | Data Steward |
| DQ-003 | email_format_valid | Validity | Email must follow standard format | Major | CRM Team |
| DQ-004 | gender_domain_valid | Validity | Gender must be M, F, or O | Minor | Data Steward |
| DQ-005 | customer_id_unique | Uniqueness | Customer ID must be unique | Critical | MDM Team |
| DQ-006 | updated_within_24hrs | Timeliness | Data updated within SLA | Major | Engineering |

---

## Severity Definitions
- Critical: Compliance or business impact
- Major: Reporting / analytics impact
- Minor: Cosmetic / low impact

---

## Ownership Model
- Data Owner – Accountable
- Data Steward – Monitor & remediate
- Engineering – Fix pipelines
- Governance – Standards & policy
