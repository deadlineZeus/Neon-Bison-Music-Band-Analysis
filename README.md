
# Neon Bison Music Band Analysis 

A comprehensive PostgreSQL-based analytics project for **Neon Bison**, a fictional American music band. Using real-world music store data, this project uncovers patterns in customer behavior, genre popularity, geographic spending, and revenue optimization — aimed at guiding the band’s next concert tour planning. This is a completely stand-alone project created for the purpose of demonstrating skills to solve business problems and acquire technical mastery.

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

This section demonstrates how the dataset was imported and loaded to PostgreSQL database locally before our analysis. First a database was created and then we used automation for uploading the `.CSV` files using `Python` on the `Jupyter Notebook`. We used the `SQLAlchemy` library to import the functions to have the files path and do the task for us.  

You can preview the automation steps in action here:  
🎥 **[Watch the video on YouTube](https://youtu.be/SzcM7h5wIxY?si=QEMQKyq-n09Kvpln)** _(right-click or Ctrl+Click to open in a new tab)_

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

> Key CSV files ( Available in `data/` folder):  
> `customer.csv`, `invoice.csv`, `invoice_line.csv`, `track.csv`, `album.csv`, `artist.csv`, `genre.csv`,  
> `media_type.csv`, `employee.csv`, `playlist.csv`, `playlist_track.csv`

</details>

---

<a id="entity-relationship-diagram"></a>
<details>
<summary><strong>Entity-Relationship Diagram</strong></summary>

Below is the database schema showcasing relationships between all tables:

![Schema Diagram](schema_diagram.png)

</details>
