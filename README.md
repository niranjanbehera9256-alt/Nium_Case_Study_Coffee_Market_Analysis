# ☕ ACME Baristas — Global Market Expansion Analysis

## 📌 Project Overview

This project analyzes population, country, and coffee-related datasets to identify the **top three potential markets for ACME Baristas' global expansion**.

The solution integrates Python-based data preparation, PostgreSQL database management, SQL analytics, and interactive visualizations to evaluate demographic trends and support data-driven market screening.

**Business Objective:** Identify promising countries for expansion based on population size and growth trends, while highlighting the additional commercial data required to validate market viability.

---

## 🎯 Business Problem

Expanding into international markets requires a systematic approach to evaluating potential customer reach and market growth.

This project addresses the following business questions:

- 🌍 Which countries have the largest population bases?
- 📈 Which countries demonstrate promising population growth trends?
- ☕ How can available coffee-related data contribute to market evaluation?
- 📊 Which three countries should be shortlisted for further commercial assessment?
- 🔎 What additional data is required before making investment decisions?

---

## 🛠️ Technology Stack

- 🐍 **Python:** Data cleaning, transformation, and analysis
- 🐼 **Pandas:** Data manipulation, reshaping, and validation
- 🐘 **PostgreSQL:** Relational database storage and analytical processing
- 🗄️ **SQL:** Data quality checks, population trends, and market analysis
- 📊 **Plotly:** Interactive data visualization
- 📓 **Jupyter Notebook:** Exploratory analysis and presentation of findings

---

## 🏗️ Data Architecture & Workflow

```text
Raw Datasets
     |
     v
Python + Pandas
(Data Cleaning & Transformation)
     |
     v
Data Validation
(Country Mapping & Quality Checks)
     |
     v
Dimensional Data Model
     |
     v
PostgreSQL Database
     |
     v
SQL Analytical Queries
     |
     v
Jupyter Notebook + Plotly
     |
     v
Market Evaluation & Insights
```

---

## 🗄️ Data Model

The project uses a dimensional model consisting of one fact table and two dimension tables.

| Table | Description |
|---|---|
| `fact_population` | Population measurements by country and time period. |
| `dim_country` | Country attributes and standardized country identifiers. |
| `dim_coffee` | Coffee-related attributes available in the source dataset. |

### 🔑 Data Modeling Considerations

- Standardize country identifiers using ISO3 codes.
- Validate country mappings across source datasets.
- Define the grain of population observations consistently.
- Check duplicate records, missing values, and key integrity.
- Maintain clear relationships between fact and dimension tables.

---

## 📊 Analytical Modules

### 1. ✅ Data Quality Checks

**Script:** `01_data_quality_checks.sql`

- Identify missing values and duplicate records.
- Validate ISO3 country codes and country mappings.
- Check key consistency and data completeness.
- Verify relationships between fact and dimension tables.

### 2. 🌍 Population Trend Analysis

**Script:** `02_population_trend_analysis.sql`

- Compare population sizes across countries.
- Analyze historical population trends.
- Evaluate demographic growth patterns.
- Identify countries with substantial potential customer reach.

### 3. 📈 Market Growth Analysis

**Script:** `03_market_growth_analysis.sql`

- Compare candidate countries using population indicators.
- Evaluate market size and demographic growth together.
- Apply consistent ranking criteria to shortlist potential markets.
- Prepare analytical outputs for business interpretation.

### 4. ☕ Coffee Event Analysis

**Script:** `04_coffee_event_analysis.sql`

- Examine available coffee-related data and attributes.
- Investigate relevant patterns supported by the dataset.
- Identify gaps in coffee market information.
- Highlight additional data required for stronger market recommendations.

---

## 📁 Project Structure

```text
ACME-Baristas-Market-Expansion/
│
├── python/
│   └── Data cleaning and analysis scripts
│
├── sql/
│   ├── 01_data_quality_checks.sql
│   ├── 02_population_trend_analysis.sql
│   ├── 03_market_growth_analysis.sql
│   └── 04_coffee_event_analysis.sql
│
├── notebook/
│   └── Market expansion analysis notebook
│
├── outputs/
│   └── Analysis results and visualizations
│
├── db/
│   └── PostgreSQL database dump
│
├── requirements.txt
└── README.md
```

*The directory names and filenames should match the actual repository contents.*

---

## ⚙️ How to Run the Project

### Step 1: Install Dependencies

```bash
pip install pandas numpy plotly jupyter sqlalchemy psycopg2-binary
```

### Step 2: Prepare the Data

Run the Python data preparation scripts to clean, reshape, and validate the datasets used to generate:

- `fact_population`
- `dim_country`
- `dim_coffee`

### Step 3: Load Data into PostgreSQL

- Create the target database.
- Configure database connectivity.
- Create the required tables and relationships.
- Load the prepared datasets.

### Step 4: Execute SQL Scripts

Run the scripts in the following order:

1. `01_data_quality_checks.sql`
2. `02_population_trend_analysis.sql`
3. `03_market_growth_analysis.sql`
4. `04_coffee_event_analysis.sql`

Review data quality results before interpreting the analysis.

### Step 5: Explore Visualizations

Launch Jupyter Notebook:

```bash
jupyter notebook
```

Open the project notebook to review the visualizations, country comparisons, and business insights.

---

## 🧠 Key Design Decisions

- **Python for preprocessing:** Used Pandas to clean and reshape source datasets before database loading.
- **PostgreSQL for analytical storage:** Centralized structured datasets for consistent SQL analysis.
- **Dimensional modeling:** Separated population measurements from descriptive country and coffee attributes.
- **Modular SQL scripts:** Organized quality checks and analytical tasks into reusable components.
- **Interactive visualization:** Used Plotly and Jupyter Notebook to communicate trends and findings.

---

## 🚧 Challenges Faced

### Country Mapping and Standardization

Country names and identifiers may differ across datasets.

**Approach:** Standardize country identifiers using ISO3 codes and validate unmatched mappings.

### Population Dataset Reshaping

Population data may be supplied in wide or inconsistent formats.

**Approach:** Transform the data into a consistent analytical structure using Pandas.

### Data Quality and Integration

Missing values, duplicate records, and inconsistent keys can affect analytical reliability.

**Approach:** Perform validation checks before loading data into PostgreSQL and interpreting the results.

---

## 📌 Assumptions & Limitations

- Population size is used as an indicator of potential customer reach.
- Population growth is treated as a demographic signal, not a direct measure of coffee demand.
- Country-level data may not reflect city-level market conditions.
- The strength of coffee-specific analysis depends on the available source data.
- Market attractiveness cannot be established through population metrics alone.

---

## 🔍 Future Enhancements

Potential improvements include incorporating:

- ☕ Coffee consumption per capita and market demand estimates.
- 💰 GDP per capita and disposable income.
- 🏙️ Urban population and population density.
- 🏪 Competitor presence and market saturation.
- 🏢 Commercial rental costs and operating expenses.
- 🛒 Consumer preferences and purchasing behavior.
- 📍 Geospatial analysis for city-level expansion planning.
- 📊 Weighted market scoring and sensitivity analysis.

---

## 🎯 Conclusion

The ACME Baristas Market Expansion Analysis provides a structured analytical framework for screening potential international markets using population data, country attributes, and available coffee-related information.

By combining Python, PostgreSQL, SQL, and interactive visualization, the project demonstrates how raw datasets can be transformed into useful business insights.

The resulting shortlist should be validated using coffee demand, purchasing power, competition, and location economics before final expansion decisions are made.

**Key Deliverable:** A reproducible data analytics workflow to support global market screening and evidence-based expansion planning.
