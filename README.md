# Neon Bison Music Band Analysis

A comprehensive PostgreSQL-based analytics project for *Neon Bison*, a fictional American music band. Using real-world music store data, this project uncovers patterns in customer behavior, genre popularity, geographic spending, and revenue optimization — aimed at guiding the band’s next concert tour planning. This is a completely stand-alone project created for the purpose of demonstrating skills to solve business problems and acquire technical mastery.

---

<details>
<summary><strong>Table of Contents</strong></summary>

- [Project Overview](#project-overview)  
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

<a id="project-overview"></a>
<details>
<summary><strong>Project Overview</strong></summary>

This project simulates a business intelligence case for a band preparing to scale up its operations globally. Using SQL queries in PostgreSQL, we analyze historical digital music store data to derive insights across dimensions like customer behavior, sales geography, media preferences, genre trends, and revenue contributions by artists.

The findings can inform setlist decisions, marketing geography, pricing strategies, and tour planning. To make informed decisions, they are analyzing past music store data to uncover:

- Who their top customers are  
- Which cities or countries have the highest engagement  
- Which genres and artists are most popular  
- What revenue patterns exist across markets and media  

All queries are written in PostgreSQL.

</details>

---

<a id="data-loading"></a>
<details>
<summary><strong>Data Loading</strong></summary>

This section demonstrates how the dataset was imported and loaded to PostgreSQL database locally before our analysis. First a database was created and then we used automation for uploading the .CSV files using Python on the Jupyter Notebook. We used the SQLAlchemy library to import the functions to have the files path and do the task for us.  

You can preview the automation steps in action here:  
🎥 **[Watch the video on YouTube](https://youtu.be/SzcM7h5wIxY?si=QEMQKyq-n09Kvpln)** (right-click or Ctrl+Click to open in a new tab)

[![Watch the video](https://img.youtube.com/vi/SzcM7h5wIxY/0.jpg)](https://youtu.be/SzcM7h5wIxY?si=QEMQKyq-n09Kvpln)

---

Additionally, a local copy of the video is included in the repository:

<video width="100%" height="400" controls>
  <source src="validation/data_loading.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

</details>


---

<a id="dataset-description"></a>
<details>
<summary><strong>Dataset Description</strong></summary>

The dataset resembles a digital music store with the following key tables:

| Table                   | Description                                                  |
|-------------------------|--------------------------------------------------------------|
| customer              | Customer info, country, contact details, and rep IDs         |
| invoice               | Purchase transactions, billing countries, totals             |
| invoice_line          | Individual line items in each invoice (track, price, qty)    |
| track                 | Metadata of tracks: album, genre, composer, duration         |
| album                 | Albums and their corresponding artists                       |
| artist                | Artist names                                                 |
| genre                 | Genres (e.g., Rock, Jazz, Pop)                               |
| media_type            | Format of music (MP3, AAC, etc.)                             |
| employee              | Store employees, reps, and hierarchy                         |
| playlist, playlist_track | Playlist metadata and track mapping               |

> Key CSV files ( Available in data/ folder):  
> customer.csv, invoice.csv, invoice_line.csv, track.csv, album.csv, artist.csv, genre.csv,  
> media_type.csv, employee.csv, playlist.csv, playlist_track.csv

</details>

---

<a id="entity-relationship-diagram"></a>
<details>
<summary><strong>Entity-Relationship Diagram</strong></summary>

Below is the database schema showcasing relationships between all tables:

![Schema Diagram](schema_diagram.png)

</details>

---

<a id="business-questions-answered"></a>
<details>
<summary><strong>Business Questions Answered</strong></summary>

### Genre & Track Trends <sub><em> (Click on the question to see the answers directly)</em></sub>

<div style="padding-left: 5em;">
  <details>
    <summary><strong>Genre with Highest Revenues</strong></summary>
    <img src="outputs/Q1.jpg" alt="Genre with Highest Revenues">
  </details>
</div>
<div style="padding-left: 5em;">
  <details>
    <summary><strong>Genre with Low Volume but High Revenue</strong></summary>
    <img src="outputs/Q2.jpg" alt="Genre with Low Volume but High Revenue">
  </details>
</div>
<div style="padding-left: 5em;">
  <details>
    <summary><strong>Tracks Purchased Most Number of Times</strong></summary>
    <img src="outputs/Q3.jpg" alt="Tracks Purchased Most Number of Times">
  </details>
</div>
<div style="padding-left: 5em;">
  <details>
    <summary><strong>Songs longer than Average Song Length</strong></summary>
    <img src="outputs/Q4.jpg" alt="Songs longer than Average Song Length">
  </details>
</div>
<div style="padding-left: 5em;">
  <details>
    <summary><strong>All Rock Music Listeners Data</strong></summary>
    <img src="outputs/Q5.jpg" alt="All Rock Music Listeners Data">
  </details>
</div>

### Artist & Album Performance <sub><em> (Click on the question to see the answers directly)</em></sub>

<div style="padding-left: 5em;">
  <details>
    <summary><strong>Albums with Highest Revenue Per Track</strong></summary>
    <img src="outputs/Q6.jpg" alt="Albums with Highest Revenue Per Track">
  </details>
</div>
<div style="padding-left: 5em;">
  <details>
    <summary><strong>Artists With Highest Revenue</strong></summary>
    <img src="outputs/Q7.jpg" alt="Artists With Highest Revenue">
  </details>
</div>
<div style="padding-left: 5em;">
  <details>
    <summary><strong>Top 10 Rock artists by song numbers</strong></summary>
    <img src="outputs/Q8.jpg" alt="Top 10 Rock artists by song numbers">
  </details>
</div>
<div style="padding-left: 5em;">
  <details>
    <summary><strong>Artists with Most Number of Appearences in Invoices</strong></summary>
    <img src="outputs/Q9.jpg" alt="Artists with Most Number of Appearences in Invoices">
  </details>
</div>
<div style="padding-left: 5em;">
  <details>
    <summary><strong>Customer Spending on Each Artist</strong></summary>
    <img src="outputs/Q10.jpg" alt="Customer Spending on Each Artist">
  </details>
</div>

### Customer Insights & Segmentation <sub><em> (Click on the question to see the answers directly)</em></sub>

<div style="padding-left: 5em;">
  <details>
    <summary><strong>Highest Spending Customer of All Time</strong></summary>
    <img src="outputs/Q11.jpg" alt="Highest Spending Customer of All Time">
  </details>
</div>
<div style="padding-left: 5em;">
  <details>
    <summary><strong>Customers with Single or Multiple Purchases</strong></summary>
    <img src="outputs/Q13.jpg" alt="Customers with Single or Multiple Purchases">
  </details>
</div>
<div style="padding-left: 5em;">
  <details>
    <summary><strong>Top Spenders From Each Country</strong></summary>
    <img src="outputs/Q14.jpg" alt="Top Spenders From Each Country">
  </details>
</div>

### Geographic Market Analysis <sub><em> (Click on the question to see the answers directly)</em></sub>

<div style="padding-left: 5em;">
  <details>
    <summary><strong>Country Wise Top Spenders on Music</strong></summary>
    <img src="outputs/Q14.jpg" alt="Country Wise Top Spenders on Music">
  </details>
</div>
<div style="padding-left: 5em;">
  <details>
    <summary><strong>Country Wise Most Popular Genre</strong></summary>
    <img src="outputs/Q16.jpg" alt="Country Wise Most Popular Genre">
  </details>
</div>
<div style="padding-left: 5em;">
  <details>
    <summary><strong>Country With Most Invoices</strong></summary>
    <img src="outputs/Q17.jpg" alt="Country With Most Invoices">
  </details>
</div>
<div style="padding-left: 5em;">
  <details>
    <summary><strong>Country Wise Average Revenue</strong></summary>
    <img src="outputs/Q18.jpg" alt="Country Wise Average Revenue">
  </details>
</div>
<div style="padding-left: 5em;">
  <details>
    <summary><strong>City With The Best Customers</strong></summary>
    <img src="outputs/Q19.jpg" alt="City With The Best Customers">
  </details>
</div>

### Financial Insights <sub><em> (Click on the question to see the answers directly)</em></sub>

<div style="padding-left: 5em;">
  <details>
    <summary><strong>Top 3 Values of Invoice</strong></summary>
    <img src="outputs/Q20.jpg" alt="Top 3 Values of Invoice">
  </details>
</div>

### Operational Utilities <sub><em> (Click on the question to see the answers directly)</em></sub>

<div style="padding-left: 5em;">
  <details>
    <summary><strong>Senior Most Employee in the band</strong></summary>
    <img src="outputs/Q21.jpg" alt="Senior Most Employee in the band">
  </details>
</div>

</details>





---

<a id="key-insights"></a>
<details>
<summary><strong>Key Insights</strong></summary>

- Rock dominates in most English-speaking countries, with Brazil leaning heavily toward Latin genres. Notably, Rock fans exhibit strong loyalty—**all 59 Rock customers were repeat buyers**, suggesting clear retention potential.
- The USA leads in both revenue and invoice volume, followed by Canada and Brazil. However, **the highest-spending individual customer** is František Wichterlová from the Czech Republic, who spent over **$144**, indicating that **high-value customers are globally dispersed**.
- While Queen and Led Zeppelin are among the top Rock artists by revenue, it's Queen who leads with over **$190 in earnings**, demonstrating both reach and monetization potential.
- Albums like *"Cake: B‑Sides and Rarities"* show extremely high commercial efficiency, earning **$30.69 from a single track**, while Jimi Hendrix’s *"Are You Experienced?"* maintains consistent performance across multiple tracks.
- Customers such as Aaron Mitchell exhibit **multi-genre spending behavior**, with purchases spanning artists like James Brown, Pearl Jam, and Chris Cornell. This reflects a **cross-genre fan segment ideal for personalized recommendations and hybrid playlists**.
- Artists with the largest catalogs (Led Zeppelin: 114 tracks, U2: 112) don’t necessarily generate the most revenue. In contrast, artists like Cake and Queen achieve better revenue-to-track ratios, highlighting the **value of high-performing catalogs over volume**.
- Cities like São Paulo and Edmonton continue to show **high average customer spend**, but strategic opportunities also exist in **underrepresented, high-spend markets** such as Prague and Brasília.

</details>

---

<details>
<summary><strong>Strategic Recommendations</strong></summary>

- **Leverage Rock Customer Loyalty**: All 59 Rock genre customers made multiple purchases, highlighting a prime audience for exclusive early-access releases, bundled album deals, or loyalty rewards focused on Rock offerings.

- **Design Geo-Specific Campaigns**: Customers in Brazil (e.g., Fernanda Dias, Luis Rojas) and Prague (e.g., František Wichterlová) represent high-value spenders. Consider **localized promotions or curated playlists** to increase regional conversion rates.

- **Introduce Cross-Genre Discovery**: Listeners like Aaron Mitchell and Bjørn Hansen span multiple genres and artists. Promote **smart discovery algorithms or AI-curated recommendations** that reflect these eclectic tastes and drive engagement.

- **Upsell Through Collector-Grade Albums**: Albums like *“Cake: B-Sides and Rarities”* deliver exceptional revenue per track. Introduce a **“Collector’s Choice” section** in the store for albums with high value density to encourage premium purchases.

- **Optimize Based on Lifetime Value (LTV)**: Customers such as Fynn Zimmermann and Michelle Brooks show sustained, diverse purchase patterns. Segmenting by LTV and engagement span can inform **tiered marketing strategies** or early-access concert invitations.

- **Target Silent High-Potential Customers**: Some customers (e.g., Luis Rojas) are active in high-spend cities like Brasília but are **underrepresented in marketing touchpoints**. A focused retargeting strategy could unlock additional value from this segment.

</details>

---

<a id="technical-skills-demonstrated"></a>
<details>
<summary><strong>Technical Skills Demonstrated</strong></summary>

- Multi-table joins using INNER JOIN, LEFT JOIN  
- Aggregation and grouping (GROUP BY, HAVING)  
- Use of window functions (ROW_NUMBER, RANK)  
- Use of Common Table Expressions (CTEs) for modular, readable queries  
- Analytical techniques like segmentation, ranking, and trend analysis  
- Formatting outputs for clarity using rounding and sorting  

</details>

---

<a id="folder-structure"></a>
<details>
<summary><strong>Folder Structure</strong></summary>

bash
Neon-Bison-Music-Band-Analysis/
├── data/                  # Raw CSV files
├── queries/               # SQL scripts per business question
├── validation/            # Data loading video
│   └── data_loading.mp4
├── visuals/               # Charts, plots, diagrams
├── outputs/               # Query result CSVs/Markdowns
├── schema_diagram.png     # ER diagram
└── README.md              # This file

</details>

---

<a id="conclusion"></a>

<details> <summary><strong>Conclusion</strong></summary>
This project showcases how relational database analysis can drive actionable music industry strategies. By analyzing purchase patterns, customer geography, genre preferences, and artist performance, bands like Neon Bison can make data-driven decisions for touring, pricing, and promotion.

</details>
