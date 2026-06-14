# ⚡ EV Adoption & Sales Analysis — India (2015–2025)

> **Tools:** SQL (MySQL) · Python (Pandas, Matplotlib, Seaborn) · Jupyter Notebook  
> **Dataset:** [Indian Electric Vehicle Sales 2015–2025 — Kaggle](https://www.kaggle.com/datasets/vagdevititikshag/indian-electric-vehicle-sales-20152025)

---

## 📌 Problem Statement

India's EV market is growing rapidly, yet businesses, policymakers, and investors lack clear data-driven insights into which vehicle segments are leading adoption, how penetration is trending, and where growth is accelerating. This project analyzes national-level EV sales data (2015–2025) using SQL and Python to surface actionable trends.

---

## 📊 Visualizations

![Year-wise EV Sales](EV-Adoption-Analysis/visuals/yearwise_ev_sales.png)
![Category-wise Sales](EV-Adoption-Analysis/visuals/categorywise_ev_sales.png)
![Category-wise Growth](EV-Adoption-Analysis/visuals/categorywise_growth.png)
![EV Penetration Trend](EV-Adoption-Analysis/visuals/ev_penetration_trend.png)
![YoY Sales Growth](EV-Adoption-Analysis/visuals/yoy_ev_sales_growth.png)

---

## 🗂️ Dataset

| Field | Detail |
|---|---|
| Source | Kaggle |
| Coverage | India — national level aggregated |
| Period | 2015 – 2025 |
| Granularity | Year · Vehicle Category · Segment |

**Key columns:** `year`, `vehicle_category`, `segment`, `sales_quantity`, `ev_penetration`

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| SQL (MySQL) | Data cleaning, aggregation, and analysis |
| Python — Pandas | Data manipulation and EDA |
| Python — Matplotlib / Seaborn | Visualizations |
| Jupyter Notebook | Interactive analysis environment |
| GitHub | Version control |

---

## 🔍 Analysis Performed

- **Year-wise EV sales trend** — tracking overall market growth from 2015 to 2025
- **Vehicle category breakdown** — comparing 2W, 3W, 4W, and public transport segments
- **Category-wise growth rates** — identifying which segments are accelerating fastest
- **EV penetration trend** — measuring EVs as a share of total vehicle sales over time
- **Year-on-Year (YoY) growth** — quantifying annual momentum

---

## 💡 Key Insights

- **Two-wheelers and three-wheelers dominate** — together accounting for the majority of all EV units sold in India
- **Consistent YoY growth** — EV sales have grown steadily each year, with sharp acceleration post-2020
- **Rising penetration** — EV penetration as a share of total vehicle sales is increasing year-over-year, reflecting improving affordability and charging infrastructure
- **Strong long-term trajectory** — the compound growth rate across the 10-year period signals sustained market expansion

> 📝 *Open your notebook and replace the above with real numbers — e.g. "2W + 3W account for ~82% of units sold" or "Sales grew from X to Y units". Real figures make the biggest impression.*

---

## 💼 Business Impact

| Stakeholder | Value |
|---|---|
| Investors | Identify high-growth EV segments for capital allocation |
| Manufacturers | Understand which vehicle categories to prioritize |
| Policymakers | Track EV penetration progress against national targets |
| Analysts | Benchmark India's EV transition with data |

---

## 📁 Project Structure

```
EV-Adoption-Analysis/
│
├── data/                  # Raw and cleaned dataset
├── sql/                   # SQL scripts for data cleaning & analysis
├── notebooks/             # Jupyter notebooks with EDA and visualizations
├── visuals/               # Exported chart images
└── README.md
```

---

## 🚀 How to Run

1. Clone the repository
   ```bash
   git clone https://github.com/data-charioteer/EV-Adoption-Analysis.git
   ```
2. Download the dataset from [Kaggle](https://www.kaggle.com/datasets/vagdevititikshag/indian-electric-vehicle-sales-20152025) and place it in the `data/` folder
3. Run the SQL scripts in `sql/` for data cleaning
4. Open the Jupyter notebook in `notebooks/` to reproduce the analysis and charts

---

## 🧠 Skills Demonstrated

`SQL` · `Exploratory Data Analysis` · `Data Visualization` · `Python` · `Business Insight Generation` · `GitHub Documentation`
