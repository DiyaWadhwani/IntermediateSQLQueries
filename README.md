# IntermediateSQLQueries

Some experiments using the SQLite database to manage and query music-related data.

**Assignment 4 Submission by Diya Wadhwani**

## How to run it

To initialize the database, follow these steps:

1. Download the Chinook database from [SQLite Tutorial](https://www.sqlitetutorial.net/sqlite-sample-database/).
2. Unzip the downloaded file and ensure you have a `chinook.db` file in the root folder of the project.

To run the queries, you can use the SQLite command line or any SQLite GUI tool like DB Browser for SQLite.

For example, to execute SQL files from the command line, run:

```bash
sqlite3 chinook.db < query1.sql
```

## Queries

- Query 1: What are the last names and emails of all customer who made purchased in the store?

Run query1.sql on DB Browser, open the chinook.db database, and execute the query1.sql file:

```bash
sqlite3 chinook.db < query1.sql
```

Similarly run the other queries:

- Query 2: What are the names of each album and the artist who created it?

- Query 3: What are the total number of unique customers for each state, ordered alphabetically by state?

- Query 4: Which states have more than 10 unique customers?

- Query 5: What are the names of the artists who made an album containing the substring "symphony" in the album title?

- Query 6: What are the names of all artists who performed MPEG (video or audio) tracks in either the "Brazilian Music" or the "Grunge" playlists?

- Query 7: How many artists published at least 10 MPEG tracks?

- Query 8: What is the total length of each playlist in hours? List the playlist id and name of only those playlists that are longer than 2 hours, along with the length in hours rounded to two decimals.

- Query 9: Creative addition: Define a new meaningful query using at least three tables, and some window function. Explain clearly what your query achieves, and what the results mean
