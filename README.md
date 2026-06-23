# Uber Data Analysis using SQL and Power BI

## Project Overview
This project performs data analysis on Uber trip data using SQL Server and Power BI. The objective is to clean the data, perform exploratory data analysis (EDA), create SQL views/tables, and build an interactive live dashboard in Power BI.

<img width="1918" height="976" alt="image" src="https://github.com/user-attachments/assets/341c6138-e599-4e98-b911-f52250da9d06" />

---

## Project Objectives

- Import raw Uber dataset into SQL Server
- Clean and preprocess data
- Perform SQL-based exploratory analysis
- Create summary tables and views
- Connect SQL Server with Power BI
- Build a live interactive dashboard
- Enable automatic data updates

---

## Tools and Technologies

- SQL Server Management Studio (SSMS)
- SQL
- Power BI
- CSV Dataset
- GitHub

---

## Project Workflow

### Step 1: Data Collection
- Imported Uber dataset (.csv)

### Step 2: Data Cleaning
Tasks performed:

- Removed duplicate records
- Handled NULL values
- Corrected data types
- Standardized data format

### Step 3: Exploratory Data Analysis

SQL queries used for:

- Total Trips
- Total Revenue
- Average Fare
- Trips by Location
- Trips by Date
- Revenue Trends

### Step 4: SQL View Creation

Created SQL views for dashboard reporting:

```sql
CREATE VIEW vw_TripSummary AS

SELECT
Pickup_Location,
COUNT(*) AS TotalTrips,
SUM(Fare) AS TotalRevenue,
AVG(Fare) AS AverageFare

FROM UberData
GROUP BY Pickup_Location;
```

### Step 5: Power BI Dashboard

Dashboard includes:

- KPI Cards
- Revenue Analysis
- Trip Distribution
- Location Analysis
- Date Filters
- Interactive Slicers

---

## Database Structure

```text
UberDB
│
├── UberData
│
├── Views
│      vw_TripSummary
│      vw_RevenueAnalysis
│      vw_LocationAnalysis
│
└── Power BI Dashboard
```

---

## Dashboard Features

✔ Live SQL Connection using DirectQuery  
✔ Automatic refresh capability  
✔ Interactive filters and slicers  
✔ Dynamic KPI reporting  

---

## Key Insights

- Identified high-demand pickup locations
- Analyzed revenue patterns
- Found peak trip periods
- Measured average fare trends

---

## How to Run the Project

1. Download dataset
2. Import CSV into SQL Server
3. Execute SQL scripts
4. Create SQL views
5. Open Power BI Desktop
6. Connect to SQL Server
7. Load views into Power BI
8. Build dashboard visuals

---

## Future Improvements

- Add predictive analysis
- Integrate real-time API data
- Add machine learning models
- Deploy dashboard online

---

## Author

Chaitanya Darekar

GitHub: https://github.com/ChaitanyaDarekar2002
