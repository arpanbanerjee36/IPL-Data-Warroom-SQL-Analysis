# 🏏 IPL DATA WARROOM | Two-Season SQL Investigation (2018–2019)

### Turning IPL Data into Insights Through SQL

**Project Type:** SQL Data Analysis | Portfolio Project  
**Domain:** Sports Analytics – Indian Premier League (IPL)  
**Seasons Analysed:** 2018 and 2019  
**SQL Questions:** 19  
**Datasets:** 4 CSV extracts  
**SQL Skills:** Filtering, Sorting, Aggregation, Grouping, UNION ALL, Subqueries and Data Quality Checks

---

## 📌 Project Overview

What can two seasons of IPL data reveal about player performances, team contributions, and batting and bowling patterns?

The **IPL DATA WARROOM** is a two-season SQL investigation using IPL batting and bowling statistics from 2018 and 2019.

The objective was not simply to identify the highest run-scorer or wicket-taker. It was to investigate player performances, compare statistics across seasons, identify team-level patterns, and examine whether the available data could support reliable conclusions.

Using SQL, I explored 19 analytical questions and converted the results into a structured data investigation.

**The most important discovery:** The 2018 and 2019 bowling datasets were identical row-for-row, raising a data-quality concern that affected the reliability of independent 2019 bowling conclusions.

---

## 🎯 Project Objectives

- Identify the leading run-scorers and wicket-takers.
- Analyse batting and bowling performances across different metrics.
- Compare player performances between IPL 2018 and 2019.
- Calculate team-level runs, wickets, boundaries and half-centuries.
- Apply SQL filtering, grouping and aggregation techniques.
- Identify data-quality issues and communicate analytical limitations.

---

## 📂 Dataset Information

The investigation uses four CSV extracts:

| Dataset | Records | Fields | Category |
|---|---:|---:|---|
| 2018_Batsmen_new.csv | 50 | 13 | Batting |
| 2018_Bowlers.csv | 50 | 11 | Bowling |
| 2019_Batsmen.csv | 50 | 13 | Batting |
| 2019_Bowlers_new.csv | 50 | 11 | Bowling |

**Total:** 200 player records across four supplied CSV extracts.

The original filenames and source records were retained during the investigation.

---

## 🔍 Key Business Questions & Analysis

The project contains 19 SQL questions covering the following analytical areas:

### 1. Player Performance Analysis
- Who took the most wickets in IPL 2018?
- Who scored the most runs in 2018 with a strike rate of at least 130?
- Which bowlers maintained an economy rate of 7 or below?
- Which batsmen scored the most runs across both seasons?
- Which players recorded the highest number of boundaries?

### 2. Cross-Season Analysis
- Who was the highest run-scorer across 2018 and 2019?
- Which batsmen recorded the most combined half-centuries?
- How can player performances be compared across two seasons?

### 3. Team Performance Analysis
- Which teams scored the highest total runs?
- Which teams hit the most sixes?
- How many batsmen from each team scored more than 300 runs?
- Which teams recorded the highest total wickets?

### 4. Advanced Statistical Analysis
- Which batsmen had the highest batting averages?
- Which bowlers conceded the fewest runs?
- How many bowlers maintained an economy rate below 8?
- Which players recorded the highest individual scores?

---

## 📊 Key Findings

The following findings are based on the supplied CSV extracts and the SQL analysis.

| Analysis | Finding |
|---|---|
| 2018 Leading Wicket-Taker | Andrew Tye – 24 wickets |
| 2018 Leading Run-Scorer (SR ≥ 130) | Kane Williamson – 735 runs |
| 2019 Leading Run-Scorer | David Warner – 692 runs |
| 2019 Highest Batting Average | MS Dhoni – 83.20 |
| 2019 Highest Strike Rate | Andre Russell – 204.82 |
| Cross-Season Run Leader | KL Rahul – 1,252 runs |
| 2018 Boundary Leader | Rishabh Pant – 105 boundaries |
| 2019 Boundary Leader | Andre Russell – 83 boundaries |

### Important Analytical Discovery 🚨

During the data investigation, I discovered that:

- The 2018 bowling dataset contained 50 rows.
- The 2019 bowling dataset also contained 50 rows.
- Both datasets were identical row-for-row.

**Why does this matter?**

The 2019 bowling dataset cannot be treated as independent evidence of 2019 bowling performances.

This highlights an important principle in data analytics:

**An SQL query can return a result, but that does not automatically mean the result is reliable.**

---

## 🛠️ SQL Concepts & Techniques Used

The project demonstrates practical SQL concepts, including:

| SQL Concept | Application |
|---|---|
| SELECT | Retrieve required columns |
| WHERE | Filter records using conditions |
| ORDER BY | Rank players and teams |
| LIMIT | Identify top-performing records |
| GROUP BY | Perform team and player-level analysis |
| SUM() | Calculate total runs, wickets and boundaries |
| COUNT() | Count players meeting specific conditions |
| UNION ALL | Combine batting records from two seasons |
| Subqueries | Perform cross-season analysis |

### Example: Cross-Season Run Analysis

One of the important SQL queries combines batting records from both seasons and calculates each player's total runs.

```sql
SELECT Player, SUM(Runs) AS Most_runs
FROM (
    SELECT Player, Runs
    FROM 2018_batsmen

    UNION ALL

    SELECT Player, Runs
    FROM 2019_batsmen
) AS batsman
GROUP BY Player
ORDER BY Most_runs DESC
LIMIT 1;
```

**Result:** KL Rahul – 1,252 combined runs.

---

## ⚠️ Data Quality & Analytical Limitations

A responsible data analyst must understand the limitations of the available data.

During this investigation, I identified two important considerations:

**1. Duplicate Bowling Dataset**

The 2018 and 2019 bowling CSV files were identical row-for-row. Therefore, the supplied 2019 bowling extract cannot independently establish 2019 bowling performance.

**2. SQL Query Interpretation**

Question 14 asks for the average strike rate by team, but the supplied SQL query selects `Team` and `Avg` without calculating a team-level average.

The original SQL query was preserved, and this interpretation issue was documented rather than silently changing the source query.

**3. Partial Team-Level Data**

Team-level batting totals represent the sum of the supplied player records, not verified official full-season team totals.

These limitations are important when interpreting the findings.

---

## 📁 Project Files

The repository contains the following project materials:

```text
IPL-DATA-WARROOM/
│
├── README.md
│
├── CASE STUDY.sql
│
├── IPL_DATA_WARROOM_Portfolio.pdf
│
└── Datasets/
    ├── 2018_Batsmen_new.csv
    ├── 2018_Bowlers.csv
    ├── 2019_Batsmen.csv
    └── 2019_Bowlers_new.csv
```

*The folder structure above represents the recommended repository organisation.*

---

## 💡 Key Learnings

Through this project, I improved my ability to:

- Translate analytical questions into SQL queries.
- Work with multiple datasets.
- Perform aggregations and cross-season comparisons.
- Interpret player and team performance metrics.
- Identify duplicate records and data-quality problems.
- Communicate insights along with their limitations.
- Understand why data validation is essential before presenting conclusions.

---

## 🚀 Future Scope

This investigation could be expanded by incorporating additional datasets containing:

- Match IDs
- Toss decisions
- Venues
- Innings information
- Match results
- Targets
- Ball-by-ball events

These additional fields would enable deeper match-level and ball-by-ball analysis.

---

## 👨‍💻 About Me

I'm an aspiring Data Analyst interested in transforming raw data into meaningful insights through SQL, Excel and data storytelling.

This project represents part of my learning journey in data analytics and my effort to develop practical analytical and problem-solving skills.

**GitHub:** https://github.com/arpanbanerjee36

**LinkedIn:** https://www.linkedin.com/in/arpanbanerjee36/

---

⭐ If you find this project interesting, feel free to explore the SQL queries and share your feedback!

**Thank you for exploring my IPL DATA WARROOM project!**
