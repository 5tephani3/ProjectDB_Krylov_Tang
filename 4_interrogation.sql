-- ==========================================================
-- FILE: 4_interrogation.sql
-- PROJECT: TheEmpireDB - Music Platform (EDM/Hardstyle)
-- ROLE: Senior BI Consultant / Lead Developer
-- STAKEHOLDERS: Investors, Marketing, City Mayors
-- ==========================================================

-- ---------------------------------------------------------
-- I. PROJECTIONS & SELECTIONS
-- ---------------------------------------------------------

-- 1. Who: The Investor
-- Scenario: Identifying high-margin "Premium" merchandise items to assess luxury revenue streams.
-- Logic: Uses BETWEEN for range filtering and ORDER BY for price priority.
SELECT DISTINCT merch_name, merch_price 
FROM merch 
WHERE merch_price BETWEEN 50.00 AND 200.00 
ORDER BY merch_price DESC;

-- 2. Who: Marketing Director
-- Scenario: Identifying active users from key European markets for the next 'Mainstage' event tour.
-- Logic: Uses IN for set matching and DISTINCT to avoid duplicate user entries.
SELECT DISTINCT first_name, last_name, country 
FROM user 
WHERE country IN ('Netherlands', 'Belgium', 'Germany', 'France')
ORDER BY last_name ASC;

-- 3. Who: Operational Manager
-- Scenario: Filtering for specific 'Rawstyle' and 'Techno' songs that qualify for a "Dark Room" festival stage.
-- Logic: Uses mask-based matching (LIKE) on genre and titles.
SELECT artist_name, artist_genre 
FROM artist 
WHERE artist_genre LIKE '%style' OR artist_genre = 'Techno';

-- 4. Who: The Investor
-- Scenario: Monitoring the health of the subscription model by checking recent payment statuses.
-- Logic: Selection based on specific payment status and unique subscription IDs.
SELECT payment_id, payment_method_type, payment_status 
FROM payment 
WHERE payment_status IN ('completed', 'pending')
ORDER BY payment_id ASC;

-- 5. Who: Marketing Director
-- Scenario: Extracting a list of young fans (Gen Z) for a TikTok-based promotional giveaway.
-- Logic: Uses BETWEEN on dates to filter age demographics.
SELECT first_name, last_name, email_address 
FROM user 
WHERE date_of_birth BETWEEN '1998-01-01' AND '2005-12-31';


-- ---------------------------------------------------------
-- II. AGGREGATION FUNCTIONS & STATISTICS
-- ---------------------------------------------------------

-- 6. Who: Marketing Director
-- Scenario: Finding high-engagement countries with more than 5 users to justify a localized Defqon.1 event.
-- Logic: GROUP BY with HAVING to filter aggregated counts.
SELECT country, COUNT(user_id) AS fan_count 
FROM user 
GROUP BY country 
HAVING fan_count > 5 
ORDER BY fan_count DESC;

-- 7. Who: The Investor
-- Scenario: Analyzing merchandise stock levels to determine which items require restock before festival season.
-- Logic: Aggregating stock totals and filtering low-stock items.
SELECT merch_id, SUM(stock_quantity) AS total_stock 
FROM stock 
GROUP BY merch_id 
HAVING total_stock < 50;

-- 8. Who: Operational Manager
-- Scenario: Evaluating song production trends by calculating average song duration per artist genre.
-- Logic: Joining artist and song tables with aggregation.
SELECT a.artist_genre, AVG(s.song_duration) AS average_duration 
FROM artist a
JOIN performs p ON a.artist_id = p.artist_id
JOIN song s ON p.song_id = s.song_id
GROUP BY a.artist_genre;

-- 9. Who: The Investor
-- Scenario: Determining the most profitable record labels based on the number of artists they manage.
-- Logic: Counting unique IDs per label group.
SELECT record_label_name, COUNT(artist_id) AS signed_artists 
FROM artist 
GROUP BY record_label_name 
HAVING signed_artists >= 3;

-- 10. Who: Marketing Director
-- Scenario: Tracking playlist diversity by counting the number of songs per user playlist.
-- Logic: Aggregating song counts within the 'contains' link table.
SELECT playlist_id, COUNT(song_id) AS track_count 
FROM contains 
GROUP BY playlist_id 
HAVING track_count >= 10;


-- ---------------------------------------------------------
-- III. JOINS (INTERNAL, EXTERNAL, MULTIPLE)
-- ---------------------------------------------------------

-- 11. Who: City Mayor
-- Scenario: Preparing security and tourism logistics by listing all artists performing in a specific city.
-- Logic: Multiple join between artist, hosted_event, event, and venue.
SELECT ar.artist_name, e.event_name, v.venue_city 
FROM artist ar
JOIN hosted_event he ON ar.artist_id = he.artist_id
JOIN event e ON he.event_id = e.event_id
JOIN venue v ON e.venue_name = v.venue_name
WHERE v.venue_city = 'Amsterdam';

-- 12. Who: The Investor
-- Scenario: Auditing total revenue per user by linking purchases to user accounts.
-- Logic: Simple Internal Join between User and Purchases to Merch.
SELECT u.last_name, m.merch_name, m.merch_price 
FROM user u
JOIN purchases pu ON u.user_id = pu.user_id
JOIN merch m ON pu.merch_id = m.merch_id;

-- 13. Who: Marketing Director
-- Scenario: Identifying "Superfans" by joining users with the artists they follow and their respective labels.
-- Logic: Multiple join showing the relationship between platform fans and label branding.
SELECT u.first_name, ar.artist_name, ar.record_label_name 
FROM user u
JOIN follows f ON u.user_id = f.user_id
JOIN artist ar ON f.artist_id = ar.artist_id;

-- 14. Who: Operational Manager
-- Scenario: Quality control for the streaming platform: finding songs that have NEVER been played (Cold Storage).
-- Logic: LEFT JOIN to identify NULL records in the listening history.
SELECT s.song_title 
FROM song s
LEFT JOIN listening_timestamp lt ON s.song_id = lt.song_id
WHERE lt.song_id IS NULL;

-- 15. Who: City Mayor
-- Scenario: Analyzing economic impact by showing events, their ticket prices, and the venues hosting them.
-- Logic: Triple join between event, venue, and ticket tables.
SELECT e.event_name, v.venue_name, t.ticket_price 
FROM event e
JOIN venue v ON e.venue_name = v.venue_name
JOIN ticket t ON e.ticket_id = t.ticket_id
WHERE t.ticket_status = 'available';


-- ---------------------------------------------------------
-- IV. NESTED QUERIES (SUBQUERIES)
-- ---------------------------------------------------------

-- 16. Who: The Investor
-- Scenario: Identifying "Ghost Artists" who are on the roster but have released zero albums (Audit for contract termination).
-- Logic: Uses NOT IN with a subquery on the releases link table.
SELECT artist_name 
FROM artist 
WHERE artist_id NOT IN (SELECT artist_id FROM releases);

-- 17. Who: Marketing Director
-- Scenario: Promoting "Paid" subscription benefits to users who currently have the "Free" tier.
-- Logic: Nested subquery to filter users based on subscription characteristics.
SELECT email_address 
FROM user 
WHERE subscription_id IN (
    SELECT subscription_id FROM subscription WHERE subscription_type = 'Free'
);

-- 18. Who: Operational Manager
-- Scenario: Finding "Anthem" potential: songs that are longer than the overall average duration of their genre.
-- Logic: Subquery in the WHERE clause to compare against the global average.
SELECT song_title, song_duration 
FROM song 
WHERE song_duration > (SELECT AVG(song_duration) FROM song);

-- 19. Who: The Investor
-- Scenario: Detecting high-demand venues that host events with ticket prices higher than ANY event in Miami.
-- Logic: Uses the ANY keyword to compare across different city benchmarks.
SELECT venue_name 
FROM event 
WHERE ticket_id IN (
    SELECT ticket_id FROM ticket WHERE ticket_price > ANY (
        SELECT t.ticket_price 
        FROM ticket t 
        JOIN event e ON t.ticket_id = e.ticket_id 
        JOIN venue v ON e.venue_name = v.venue_name 
        WHERE v.venue_city = 'Miami'
    )
);

-- 20. Who: Marketing Director
-- Scenario: Identifying elite collaborators: Artists who have a higher than average number of collaborations.
-- Logic: Nested query in the HAVING clause to filter by statistical mean.
SELECT artist_id, COUNT(artist_id_1) AS collab_count 
FROM collabs 
GROUP BY artist_id 
HAVING collab_count > (
    SELECT AVG(total_collabs) FROM (
        SELECT COUNT(artist_id_1) AS total_collabs FROM collabs GROUP BY artist_id
    ) AS sub
);