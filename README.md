Hello Dear professor or student coming across our project. Here you can find the script used to obtain the Business rules and Data dictionnary to create the perfect MCD for the music industry.
To obtain this script we modifieded ourselves then adapted it for an open AI bot. Here's the link to the chat GPT convo : https://chatgpt.com/share/69932e58-a51c-8009-ae32-d66f9fd10918
Final AI promppt for open AI :

Role Context

You are a business analyst working for a company specialized in:

* Music streaming platforms
* Promotion of concerts and festivals
* Online merchandising related to artists and events

The company operates in a digital ecosystem similar to:
[https://revealedclothing.com/](https://revealedclothing.com/)
[https://www.revealedrecordings.com/](https://www.revealedrecordings.com/)
[https://open.spotify.com/](https://open.spotify.com/)

The company manages the following business entities:
User, Subscription, Platform, Merch, Concert, Festival, Album, Playlist, Artist, Song, Podcast, Record Label.

---

Objective

The company wants to design an information system using the MERISE methodology.

You are responsible only for the analysis phase (before any conceptual or logical data modeling).

You must provide clear and structured information to a computer engineering student so that they can later:

* Create the Conceptual Data Model (MCD)
* Create the Logical Data Model (MLD)
* Design the relational database

You must NOT:

* Create diagrams
* Propose table relationships
* Make normalization assumptions
* Design the database schema

Stay strictly at the business analysis level.

---

Task 1 – Business Rules

Provide a structured bulleted list of business rules.

The rules must:

* Be written in natural business language
* Reflect how the company operates
* Not mention databases, tables, or technical modeling concepts
* Describe constraints, policies, and operational logic

Example style:

* “A user can subscribe to only one active subscription plan at a time.”
* “An artist can release multiple albums.”
* “A festival can include multiple concerts.”

Provide between 20 and 30 business rules.

---

Task 2 – Raw Data Dictionary

Based only on the business rules, create a raw data dictionary.

Requirements:

* Between 25 and 35 data items
* Presented in a table format
* No relational or structural assumptions
* No primary keys or foreign keys
* No mention of entities or tables

The table must contain the following columns:

Data Name | Meaning of the Data | Data Type | Size (characters or digits)

Data types must be generic (e.g., VARCHAR, INTEGER, DATE, BOOLEAN, DECIMAL).

Size must be realistic and justified.

---

Output Format

1. Title: Business Rules
2. Bulleted list
3. Title: Raw Data Dictionary
4. Table formatted cleanly in markdown

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Business Rules

- A user must create an account in order to access personalized streaming features.
- A user can listen to songs and podcasts with either a free or paid subscription plan.
- A user can subscribe to only one active subscription plan at a time.
- A subscription plan can be free or paid and may include different benefits depending on its type.
- A paid subscription must be associated with a valid payment method.
- A user can create multiple playlists.
- A playlist is created by one user only.
- A playlist can contain multiple songs.
- A song can appear in multiple playlists.
- An artist can release multiple albums.
- An album is released by at least one artist.
- An album contains one or more songs.
- A song is performed by at least one artist.
- An artist may be signed to one record label at a given time.
- A record label can manage multiple artists.
- A podcast series can contain multiple podcast episodes.
- A user can follow one or more artists.
- A user can purchase merchandise related to artists, concerts, or festivals.
- Merchandise items have a defined price and available stock quantity.
- A concert features one or more artists.
- A festival consists of multiple concerts scheduled over one or more days.
- A concert takes place at a specific venue and date.
- Tickets are required to attend a concert or festival unless the event is marked as free.
- A user can purchase one or more tickets for a concert or festival.
- The platform must store listening history for each user to enable recommendations.


Raw Data Dictionary :

| Data Name               | Meaning of the Data                                 | Data Type | Size (characters or digits) |
| ----------------------- | --------------------------------------------------- | --------- | --------------------------- |
| User_ID                 | Unique identifier assigned to a user                | INTEGER   | 10 digits                   |
| First_Name              | User’s given name                                   | VARCHAR   | 50 characters               |
| Last_Name               | User’s family name                                  | VARCHAR   | 50 characters               |
| Email_Address           | User’s email used for account registration          | VARCHAR   | 100 characters              |
| Password_Hash           | Encrypted password for authentication               | VARCHAR   | 255 characters              |
| Date_of_Birth           | User’s birth date                                   | DATE      | 10 characters               |
| Country                 | Country of residence of the user                    | VARCHAR   | 60 characters               |
| Subscription_Type       | Type of subscription selected (Free, Premium, etc.) | VARCHAR   | 20 characters               |
| Subscription_Start_Date | Date when the subscription becomes active           | DATE      | 10 characters               |
| Subscription_End_Date   | Date when the subscription expires                  | DATE      | 10 characters               |
| Payment_Method_Type     | Type of payment method used                         | VARCHAR   | 30 characters               |
| Payment_Status          | Status of a payment transaction                     | VARCHAR   | 20 characters               |
| Playlist_Name           | Name chosen for a playlist                          | VARCHAR   | 100 characters              |
| Playlist_Creation_Date  | Date when the playlist was created                  | DATE      | 10 characters               |
| Artist_Name             | Official stage name of an artist                    | VARCHAR   | 100 characters              |
| Artist_Genre            | Main musical genre of an artist                     | VARCHAR   | 50 characters               |
| Record_Label_Name       | Official name of the record label                   | VARCHAR   | 100 characters              |
| Album_Title             | Title of a music album                              | VARCHAR   | 150 characters              |
| Album_Release_Date      | Official release date of an album                   | DATE      | 10 characters               |
| Song_Title              | Title of a song                                     | VARCHAR   | 150 characters              |
| Song_Duration           | Length of a song in seconds                         | INTEGER   | 4 digits                    |
| Podcast_Title           | Title of a podcast series or episode                | VARCHAR   | 150 characters              |
| Event_Name              | Name of a concert or festival                       | VARCHAR   | 150 characters              |
| Event_Date              | Scheduled date of the event                         | DATE      | 10 characters               |
| Venue_Name              | Name of the venue hosting the event                 | VARCHAR   | 150 characters              |
| Venue_City              | City where the event takes place                    | VARCHAR   | 100 characters              |
| Ticket_Price            | Price of a ticket for an event                      | DECIMAL   | 8 digits (2 decimals)       |
| Merch_Name              | Name of a merchandise item                          | VARCHAR   | 150 characters              |
| Merch_Price             | Selling price of a merchandise item                 | DECIMAL   | 8 digits (2 decimals)       |
| Stock_Quantity          | Available quantity of a merchandise item            | INTEGER   | 6 digits                    |
| Listening_Timestamp     | Date and time when a song or podcast was played     | DATETIME  | 19 characters               |



