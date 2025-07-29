# Neon Bison Music Band Analysis

A comprehensive PostgreSQL-based analytics project for Neon Bison, a fictional American music band. Using real-world music store data, this project uncovers patterns in customer behavior, genre popularity, geographic spending, and revenue optimization — aimed at guiding the band’s next concert tour planning. This is a completely stand-alone project created for the purpose of demonstrating skills to solve business problems and acquire technical mastery.

---

## Project Overview

This project simulates a business intelligence case for a band preparing to scale up its operations globally. Using SQL queries in PostgreSQL, we analyze historical digital music store data to derive insights across dimensions like customer behavior, sales geography, media preferences, genre trends, and revenue contributions by artists.

The findings can inform setlist decisions, marketing geography, pricing strategies, and tour planning. To make informed decisions, they are analyzing past music store data to uncover:

- Who their top customers are  
- Which cities or countries have the highest engagement  
- Which genres and artists are most popular  
- What revenue patterns exist across markets and media  

All queries are written in PostgreSQL.

---

<details>
<summary><strong>Table of Contents</strong></summary>

- [Data Loading](#data-loading)  
- [Dataset Description](#dataset-description)  
- [Entity-Relationship Diagram](#entity-relationship-diagram)  
- [Business Questions Answered](#business-questions-answered)  
- [Key Insights](#key-insights)  
- [Technical Skills Demonstrated](#technical-skills-demonstrated)  
- [Folder Structure](#folder-structure)  
- [Conclusion](#conclusion)  

</details>

---

<details>
<summary><strong>Data Loading</strong></summary>

This section demonstrates how the dataset was imported and validated for analysis. The following video walks through the data loading process, including setting up the PostgreSQL database and importing the CSV files.

> 📁 `validation/Python Automated Table Creation & Data Fill Up on Jupyter Notebook.mp4`

<video width="100%" height="400" controls>
  <source src="validation/data_loading.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

</details>

---

<details>
<summary><strong>Dataset Description</strong></summary>

The dataset resembles a digital music store with the following key tables:

| Table                   | Description                                                  |
|-------------------------|--------------------------------------------------------------|
| `customer`              | Customer info, country, contact details, and rep IDs         |
| `invoice`               | Purchase transactions, billing countries, totals             |
| `invoice_line`          | Individual line items in each invoice (track, price, qty)    |
| `track`                 | Metadata of tracks: album, genre, composer, duration         |
| `album`                 | Albums and their corresponding artists                       |
| `artist`                | Artist names                                                 |
| `genre`                 | Genres (e.g., Rock, Jazz, Pop)                               |
| `media_type`            | Format of music (MP3, AAC, etc.)                             |
| `employee`              | Store employees, reps, and hierarchy                         |
| `playlist`, `playlist_track` | Playlist metadata and track mapping               |

> Key CSVs (in `data/` folder):  
> `customer.csv`, `invoice.csv`, `invoice_line.csv`, `track.csv`, `album.csv`, `artist.csv`, `genre.csv`,  
> `media_type.csv`, `employee.csv`, `playlist.csv`, `playlist_track.csv`

</details>

---

<details>
<summary><strong>Entity-Relationship Diagram</strong></summary>

Below is the database schema showcasing relationships between all tables:

![Schema Diagram](schema_diagram.png)

</details>

---

<details>
<summary><strong>Business Questions Answered</strong></summary>

### Genre & Track Trends  
- [Genre with Highest Revenues](queries/Genre%20with%20Highest%20Revenues.sql)  
- [Genre with Low Volume but High Revenue](queries/Genre%20with%20Low%20Volume%20but%20High%20Revenue.sql)  
- [Tracks Purchased Most Number of Times](queries/Tracks%20Purchased%20Most%20Number%20of%20Times.sql)  
- [Songs longer than Average Song Length](queries/Songs%20longer%20than%20Average%20Song%20Length.sql)  
- [All Rock Music Listeners Data](queries/All%20Rock%20Music%20Listeners%20Data.sql)

### Artist & Album Performance  
- [Albums with Highest Revenue Per Track](queries/Albums%20with%20Highest%20Revenue%20Per%20Track.sql)  
- [Artists With Highest Revenue](queries/Artists%20With%20Highest%20Revenue.sql)  
- [Top 10 Rock artists by song numbers](queries/Top%2010%20Rock%20artists%20by%20song%20numbers.sql)  
- [Artists with Most Number of Appearences in Invoices](queries/Artists%20with%20Most%20Number%20of%20Appearences%20in%20Invoices.sql)  
- [Customer Spending on Each Artist](queries/Customer%20Spending%20on%20Each%20Artist.sql)

### Customer Insights & Segmentation  
- [Highest Spending Customers Across All Time](queries/Highest%20Spending%20Customers%20Across%20All%20Time.sql)  
- [Customers with Single or Multiple Purchases](queries/Customers%20with%20Single%20or%20Multiple%20Purchases.sql)  
- [Top Spenders From Each Country](queries/Top%20Spenders%20From%20Each%20Country.sql)

### Geographic Market Analysis  
- [Country Wise Top Spenders on Music](queries/Country%20Wise%20Top%20Spenders%20on%20Music.sql)  
- [Country Wise Most Popular Genre](queries/Country%20Wise%20Most%20Popular%20Genre.sql)  
- [Country With Most Invoices](queries/Country%20With%20Most%20Invoices.sql)  
- [Country Wise Average Revenue](queries/Country%20Wise%20Average%20Revenue.sql)  
- [City With The Best Customers](queries/City%20With%20The%20Best%20Customers.sql)

### Financial Insights  
- [Top 3 Values of Invoice](queries/Top%203%20Values%20of%20Invoice.sql)

### Operational Utilities  
- [Senior Most Employee in the band](queries/Senior%20Most%20Employee.sql)

</details>

---

<details>
<summary><strong>Key Insights</strong></summary>

- Rock dominates in most English-speaking countries; Latin is big in Brazil.  
- The USA leads in both revenue and invoice volume, followed by Canada and Brazil.  
- Luís Gonçalves is the highest-spending customer at over \$49.  
- Queen and Led Zeppelin top the charts in artist revenue.  
- Cities like São Paulo and Edmonton have high average customer spend.  
- Some albums earn significantly more per track than others, showing commercial efficiency.

</details>

---

<details>
<summary><strong>Technical Skills Demonstrated</strong></summary>

- Multi-table joins using `INNER JOIN`, `LEFT JOIN`  
- Aggregation and grouping (`GROUP BY`, `HAVING`)  
- Use of window functions (`ROW_NUMBER`, `RANK`)  
- Use of Common Table Expressions (CTEs) for modular, readable queries  
- Analytical techniques like segmentation, ranking, and trend analysis  
- Formatting outputs for clarity using rounding and sorting  

</details>

---

<details>
<summary><strong>Folder Structure</strong></summary>

```bash
Neon-Bison-Music-Band-Analysis/
├── data/                  # Raw CSV files
├── queries/               # SQL scripts per business question
├── validation/            # Data loading video
│   └── data_loading.mp4
├── visuals/               # Charts, plots, diagrams
├── outputs/               # Query result CSVs/Markdowns
├── schema_diagram.png     # ER diagram
└── README.md              # This file
```
---

## Conclusion

This project showcases how relational database analysis can drive actionable music industry strategies. By analyzing purchase patterns, customer geography, genre preferences, and artist performance, bands like **Neon Bison** can make data-driven decisions for touring, pricing, and promotion.
