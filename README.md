# 🚗 Vehicle-Insurance-Analysis
End-to-end Vehicle Insurance Analytics project using Python, SQL, and Power BI to analyze 288K+ insurance policies, perform EDA, feature engineering, and build interactive dashboards for business insights.


## 📖 Project Overview

The **Vehicle Insurance Analysis** project is an end-to-end data analytics project developed using **Python, SQL, and Power BI**. The main objective of this project is to analyze vehicle insurance data, identify business trends, evaluate customer claim behavior, and generate meaningful insights that can help insurance companies make data-driven decisions.

This project covers the complete data analytics workflow, including data cleaning, preprocessing, exploratory data analysis (EDA), feature engineering, SQL-based business analysis, and interactive dashboard creation in Power BI.

The analysis helps understand how different factors such as vehicle type, insurance type, vehicle age, vehicle value, premium amount, and claim amount influence insurance claims and business performance.

---

# 🎯 Project Objectives

The primary objectives of this project are:

- Clean and preprocess raw insurance data.
- Handle missing values, duplicates, and inconsistent records.
- Perform Exploratory Data Analysis (EDA).
- Analyze premium and claim amount distributions.
- Study customer and vehicle characteristics.
- Identify high-risk insurance policies.
- Create business-oriented KPIs.
- Build an interactive Power BI dashboard.
- Generate business insights for decision-making.

---

# 🛠️ Tools & Technologies

### Programming Language
- Python

### Python Libraries
- Pandas
- NumPy
- Matplotlib
- Seaborn

### Database
- MySQL

### Business Intelligence
- Power BI

### Other Tools
- Jupyter Notebook
- Git
- GitHub
- Microsoft Excel

---

# 📂 Dataset Description

The dataset contains vehicle insurance information collected from thousands of insurance policies.

The dataset includes information such as:

- Vehicle ID
- Customer Gender
- Insurance Type
- Vehicle Brand
- Vehicle Type
- Vehicle Value
- Engine Size
- Number of Seats
- Vehicle Capacity
- Premium Amount
- Claim Amount
- Claim Category
- Policy Start Date
- Policy End Date
- Product Year
- Policy Year

The dataset was cleaned before analysis to ensure high-quality and reliable business insights.

---

# 🧹 Data Cleaning

Several preprocessing steps were performed before analysis.

These include:

- Removed duplicate records
- Checked missing values
- Filled missing values using suitable methods
- Corrected incorrect data types
- Removed unrealistic values
- Standardized categorical values
- Treated outliers using boxplots
- Verified numerical columns

These steps improved data quality and ensured accurate analysis.

---

# ⚙️ Feature Engineering

To generate additional business insights, new features were created.

### Vehicle Age

Vehicle Age = Policy Year − Product Year

This feature helps identify whether older vehicles generate higher claims.

### Claim Ratio

Claim Ratio = Claim Amount / Premium

This metric measures insurance risk by comparing claims against collected premiums.

### Risk Status

Policies were categorized into different risk groups based on the Claim Ratio.

---

# 📊 Exploratory Data Analysis (EDA)

EDA was performed to understand data patterns and relationships.

The following analyses were completed:

### Dataset Overview
- Shape
- Data Types
- Summary Statistics

### Missing Value Analysis

Checked and handled missing values across all columns.

### Duplicate Analysis

Removed duplicate records.

### Outlier Analysis

Used Boxplots to identify abnormal Premium, Claim Amount, and Vehicle Value observations.

### Univariate Analysis

Created:

- Histogram
- Box Plot
- Count Plot

### Bivariate Analysis

Created:

- Scatter Plot
- Bar Chart
- Grouped Analysis

Examples:

- Premium vs Claim Amount
- Vehicle Age vs Claim Amount
- Vehicle Type vs Premium
- Brand vs Claim Amount

### Correlation Analysis

Generated a Correlation Heatmap to identify relationships among numerical variables.

---

# 📈 SQL Analysis

SQL was used to answer various business questions.

Examples include:

- Total Premium Collected
- Total Claim Amount
- Average Premium
- Average Claim
- Top Vehicle Brands
- Insurance Type Analysis
- Vehicle Type Analysis
- Customer Distribution
- Claim Category Analysis
- High Claim Customers

---

# 📊 Power BI Dashboard

A professional Power BI dashboard was created for business users.

Dashboard Pages include:

### Executive Dashboard

KPIs

- Total Policies
- Total Premium
- Total Claim Amount
- Average Premium
- Average Claim
- Claim Ratio

### Vehicle Analysis

- Vehicle Type Analysis
- Vehicle Brand Analysis
- Vehicle Age Analysis
- Vehicle Value Analysis

### Customer Analysis

- Gender Distribution
- Insurance Type Analysis
- Usage Type Analysis

### Risk Dashboard

- High Risk Policies
- Claim Ratio
- Premium vs Claim
- Risky Vehicle Brands

### Claim Dashboard

- Claim Category
- Monthly Claims
- Yearly Claims
- Top Claim Customers


# 📁 Project Structure

```
Vehicle-Insurance-Analysis
│
├── Dataset
├── Python
├── SQL
├── Power BI
├── Dashboard Screenshots
├── README.md
└── requirements.txt
```

# 👨‍💻 Author

**MD Alimullah**

Aspiring Data Analyst

Skills:

- Python
- SQL
- Power BI
- Excel
- Data Visualization
- Data Cleaning
- Feature Engineering
- Exploratory Data Analysis

GitHub:
https://github.com/mdali18852

LinkedIn:https://www.linkedin.com/in/md-alimullah-657888291/


