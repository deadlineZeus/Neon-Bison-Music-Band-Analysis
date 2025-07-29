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
- [Strategic Recommendations](#strategic-recommendations)  
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

- Rock dominates in most English-speaking countries; Latin thrives in Brazil.  
- The USA leads in both total revenue and invoice volume, followed by Canada and Brazil.  
- Queen and Led Zeppelin top the charts in artist revenue generation.  
- Cities like São Paulo and Edmonton show notably high average customer spend.  
- Some albums like *Cake: B-Sides and Rarities* yield significantly higher revenue per track, showcasing strong commercial efficiency.  
- The Prague market, particularly through customers like František Wichterlová, reveals unexpectedly high spend potential despite smaller invoice volume.

</details>

---

<a id="strategic-recommendations"></a>
<details>
<summary><strong>Strategic Recommendations</strong></summary>

- **Double Down on Rock-Focused Promotions**: All 59 customers purchasing Rock tracks have made multiple purchases. Consider loyalty incentives, VIP access to new releases, or genre-themed subscription models.

- **Launch Regionalized Campaigns for High-Value Customers**: Clients in Brasília (e.g., Luis Rojas) and Prague (e.g., František Wichterlová) show standout spending behaviors. Tailored marketing and local language messaging could further boost retention and growth.

- **Introduce Smart Discovery Features**: Customers such as Aaron Mitchell and Bjørn Hansen purchase across a wide array of genres and artists. Recommend dynamic playlists and AI-driven suggestions to cater to their varied tastes.

- **Highlight Collector-Grade Albums**: Albums with high revenue-per-track efficiency, like *Cake: B-Sides and Rarities*, should be marketed as premium products in a curated “Collector’s Choice” section.

- **Segment by Lifetime Value and Engagement Span**: Customers like Fynn Zimmermann and Michelle Brooks display long-term, multi-artist engagement. Build tiered customer strategies for upselling, re-engagement, and early access programs.

- **Identify Undermarketed High Spenders**: Silent but high-value clients like Luis Rojas are not currently engaged by tailored campaigns. Re-engage this segment through exclusive offers and personalized touchpoints.

</details>


---

<a id="technical-skills-demonstrated"></a>
<details>
<summary><strong>Technical Skills Demonstrated</strong></summary>

**SQL Skills**  
- Multi-table joins using `INNER JOIN`, `LEFT JOIN`  
- Aggregation and filtering using `GROUP BY`, `HAVING`  
- Window functions such as `ROW_NUMBER`, `RANK` for advanced analytics  
- Common Table Expressions `(CTEs)` for modular and readable queries  
- `Query optimization`, sorting, and formatting of outputs for clarity  

**Data Workflow & Tools**  
- Used **Jupyter Notebook** and **Python** to automate bulk data loading into `PostgreSQL`  
- Set up and analyzed datasets within a locally hosted database  
- Utilized AI tools like `ChatGPT` to accelerate query design and enhance productivity  

**Conceptual Foundations**  
- Applied core `DBMS (Database Management System)` principles to model relationships across tables  

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
