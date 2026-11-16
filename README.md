# 🏥 SQL Healthcare Data Analysis Queries

A comprehensive collection of SQL queries written to extract, transform, and analyze relational healthcare data, uncovering patient demographics, clinical trends, and physician performance metrics.

## 📊 Project Overview
This repository showcases core and advanced database querying techniques using SQL Server. It features a relational schema linking `patients` and `doctors` datasets to answer real-world healthcare operational questions.

## 📁 Datasets Included
- `patients.csv`: Contains patient records including demographics (age, gender, city), clinical conditions, admission types, admission dates, and length of stay.
- `doctors.csv`: Contains physician details and medical specializations.

## 🔍 Key Queries & Technical Implementation

### 1. Filtering & Conditional Extraction
- **Basic & Multi-Condition Filtering:** Extracted patient cohorts based on location (`Lagos`), stay duration (`Length_of_Stay > 5`), age brackets (`BETWEEN 30 AND 50`), and compound criteria like emergency admissions.
- **List-Based Matching:** Filtered specific medical conditions using the `IN` operator (e.g., hypertension and diabetes).

### 2. Aggregations & Grouping
- **Statistical Summaries:** Calculated total patient counts, average patient age, and grouped patient distributions by medical condition and admission type using `GROUP BY` and `HAVING` clauses.
- **Type Casting:** Utilized `CAST AS FLOAT` to ensure accurate mathematical aggregations for average length of stay.

### 3. Advanced Conditional Logic (`CASE WHEN`)
- **Patient Segmentation:** Segmented patients into dynamic age brackets (`Young`, `Middle-aged`, `Senior`) and stay classifications (`Short Stay` vs. `Long Stay`) using conditional `CASE` statements.

### 4. String & Date Functions
- **Data Formatting:** Applied string transformations (`UPPER`, `LOWER`, `CONCAT`) and extracted temporal attributes (`YEAR`, `MONTH`) from admission timestamps.

### 5. Relational Joins & Physician Analytics
- **Table Joins:** Connected `patients` and `doctors` tables using `JOIN` to evaluate doctor specializations and patient care distribution.
- **Performance Ranking:** Used aggregate functions, joins, and sorting (`ORDER BY ... DESC`) to identify top-performing physicians by total patient volume.

## 🛠️ Skills Demonstrated
- **Relational Database Management:** Primary and foreign key relationship mapping across tables.
- **Advanced Query Writing:** Complex nesting, conditional statements, and robust multi-table reporting.

---
*Built as part of professional data analysis portfolio development.*
