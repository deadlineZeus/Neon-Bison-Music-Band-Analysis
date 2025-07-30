# Global Concert Tour Strategy for Neon Bison

A data-driven analytics project focused on designing the **optimal global concert tour strategy** for *Neon Bison*, a fictional American rock band. Using real-world digital music store data, this project uncovers customer spending patterns, genre preferences, and high-potential cities — enabling smart tour scheduling, geo-targeted promotions, and fan engagement strategies.

This project simulates a real-world music business scenario and demonstrates how structured SQL analysis can be used to make **profitable touring decisions**.


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
- [Conclusion](#conclusion)  
- [Folder Structure](#folder-structure)  

</details>


---

<a id="project-overview"></a>
<details>
<summary><strong>Project Overview</strong></summary>

**Business Objective**  
To design a profitable, data-backed concert tour for *Neon Bison* by identifying the most promising countries, cities, and fan segments across the world.

**Background**  
*Neon Bison*, an emerging American rock band, is planning its next international concert tour. Instead of relying solely on intuition or past performance, the management team aims to use transactional music store data to understand where their strongest and most valuable fan bases are located.

**Analytical Approach**  
Using structured SQL queries on a relational database that mirrors a global digital music platform, this project analyzes:

- Countries and cities with the highest music-related revenue  
- Top-spending customers and their geographic concentration  
- Regional dominance of music genres, especially Rock  
- Commercial performance of artists and albums by market  
- Customer behavior insights across genre and format preferences  

**Outcome**  
The analysis results in a strategic roadmap for Neon Bison’s global concert tour. By aligning their performance schedule with high-revenue markets and loyal fan clusters, the band can maximize ticket sales, merchandising opportunities, and marketing efficiency.

</details>




---

<a id="data-loading"></a>
<details>
<summary><strong>Data Loading</strong></summary>

This section demonstrates how the dataset was imported and loaded to `PostgreSQL` database locally before our analysis. First a database was created and then we used automation for uploading the .CSV files using `Python` on the `Jupyter Notebook`. We used the `SQLAlchemy` library to import the functions to have the files path and do the task for us.  

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

<a id="general-insights"></a>
<details>
<summary><strong>General Insights</strong></summary>

- The USA, Canada, and France have the highest music-related revenue.
- India and Brazil, despite having lower average spend per customer, have promising customer volume.
- Rock is the most dominant genre globally and is especially popular in top-spending regions.
- MP3 is the preferred media format among most customers.
- A few high-value customers contribute significantly to overall revenue — classic Pareto distribution.
- Sales are not evenly distributed across cities even within the same country.
- The band’s genre aligns well with revenue patterns — opportunity for strategic alignment.

</details>

---

<a id="strategic-insights"></a>
<details>
<summary><strong>Strategic Insights</strong></summary>

- Focus initial tour legs in the USA, Canada, and France for maximum immediate ROI.
- India and Brazil offer long-term potential — leverage volume-based strategies like discounts or digital campaigns.
- Target cities with high concentration of rock listeners and spending per customer (e.g., Paris, São Paulo, New York).
- Launch pre-tour digital campaigns in cities with moderate revenue but fast-growing customer bases.
- Prioritize engagement with top 10% customers through exclusive access, loyalty rewards, or meetups.

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
- Used `Jupyter Notebook` and `Python` to automate bulk data loading into `PostgreSQL`
- Used `ORM` libraries like `SQL Alchemy` for data faster data loading
- Set up and analyzed datasets within a locally hosted database
- Utilized AI tools like `ChatGPT` to accelerate query design and enhance productivity  

**Conceptual Foundations**  
- Applied core `DBMS (Database Management System)` principles to model relationships across tables  

</details>


---


<a id="conclusion"></a>
<details>
<summary><strong>Conclusion</strong></summary>

This project demonstrates how structured SQL analytics can translate raw transactional data into meaningful business decisions. 

By analyzing listener behavior, regional market potential, and revenue patterns, Neon Bison can design more effective concert tours, improve fan targeting, and identify high-value customer segments. 

The methodology showcased here is scalable and adaptable to other artists or industries seeking to leverage relational databases for strategic growth.

</details>


---

<a id="folder-structure"></a>
<details>
<summary><strong>Folder Structure</strong></summary>

```bash
music-sales-analysis/
├── data/                               # Raw CSV files (source tables)
│   ├── album.csv
│   ├── artist.csv
│   ├── customer.csv
│   ├── employee.csv
│   ├── genre.csv
│   ├── invoice.csv
│   ├── invoice_line.csv
│   ├── media_type.csv
│   ├── playlist.csv
│   ├── playlist_track.csv
│   └── track.csv
│
├── queries/                            # SQL scripts answering business questions
│   ├── 01_Genre_Highest_Revenue.sql
│   ├── 02_Genre_High_Value_Low_Volume.sql
│   ├── 03_Most_Purchased_Tracks.sql
│   ├── 04_Songs_Longer_Than_Average.sql
│   ├── 05_All_Rock_Music_Listeners.sql
│   ├── 06_Albums_Highest_Revenue_Per_Track.sql
│   ├── 07_Artists_Highest_Revenue.sql
│   ├── 08_Top10_Rock_Artists_By_Tracks.sql
│   ├── 09_Artists_Most_Invoice_Appearances.sql
│   ├── 10_Customer_Spending_Per_Artist.sql
│   ├── 11_Top_Spending_Customers.sql
│   ├── 12_Highest_Spending_Customers.sql
│   ├── 13_Customers_Single_vs_Multiple_Purchases.sql
│   ├── 14_Top_Spenders_By_Country.sql
│   ├── 15_Top_Spenders_Per_Country.sql
│   ├── 16_Most_Popular_Genre_Per_Country.sql
│   ├── 17_Country_With_Most_Invoices.sql
│   ├── 18_Country_Wise_Average_Revenue.sql
│   ├── 19_Best_Customers_By_City.sql
│   ├── 20_Top_3_Invoice_Values.sql
│   └── 21_Senior_Most_Employee.sql
│
├── outputs/                            # Visual output (JPG) for each query
│   ├── Q1.jpg
│   ├── Q2.jpg
│   ├── Q3.jpg
│   ├── Q4.jpg
│   ├── Q5.jpg
│   ├── Q6.jpg
│   ├── Q7.jpg
│   ├── Q8.jpg
│   ├── Q9.jpg
│   ├── Q10.jpg
│   ├── Q11.jpg
│   ├── Q12.jpg
│   ├── Q13.jpg
│   ├── Q14.jpg
│   ├── Q15.jpg
│   ├── Q16.jpg
│   ├── Q17.jpg
│   ├── Q18.jpg
│   ├── Q19.jpg
│   ├── Q20.jpg
│   └── Q21.jpg
│
├── validation/                         # Data setup & validation resources
│   ├── Notebook File for Data Upload.ipynb
│   └── Python Automated Table Creation & Data Fill Up on Jupyter Notebook.mp4
│
├── schema_diagram.png                  # Database schema/ER diagram
└── README.md                           # Project overview and documentation


---

<a id="conclusion"></a>

<details> <summary><strong>Conclusion</strong></summary>
This project showcases how relational database analysis can drive actionable music industry strategies. By analyzing purchase patterns, customer geography, genre preferences, and artist performance, bands like Neon Bison can make data-driven decisions for touring, pricing, and promotion.

</details>

---


