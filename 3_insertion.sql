USE MusicDB;
SET AUTOCOMMIT = 0;
START TRANSACTION;

-- ---------------------------------------------------------
-- 1. SUBSCRIPTIONS
-- ---------------------------------------------------------
INSERT INTO subscription (subscription_id, subscription_type, subscription_start_date, subscription_end_date) VALUES
(1, 'Premium Monthly', '2024-01-01', '2025-01-01'),(2, 'Free Tier', '2023-01-01', '2099-12-31'),(3, 'Premium Annual', '2024-02-15', '2025-02-15'),
(4, 'Premium Monthly', '2024-03-01', '2025-03-01'),(5, 'Premium Monthly', '2024-01-10', '2025-01-10'),(6, 'Student Discount', '2024-01-01', '2025-01-01'),
(7, 'Free Tier', '2023-05-20', '2099-12-31'),(8, 'Premium Annual', '2024-04-12', '2025-04-12'),(9, 'VIP Pass', '2024-01-01', '2025-01-01'),
(10, 'Premium Monthly', '2024-02-01', '2025-02-01'),(11, 'Premium Monthly', '2024-03-15', '2025-03-15'),(12, 'Free Tier', '2022-10-10', '2099-12-31'),
(13, 'Family Plan', '2024-01-01', '2025-01-01'),(14, 'Student Discount', '2024-02-20', '2025-02-20'),(15, 'Premium Annual', '2024-01-15', '2025-01-15'),
(16, 'Premium Monthly', '2024-04-01', '2025-04-01'),(17, 'Premium Monthly', '2024-01-05', '2025-01-05'),(18, 'Free Tier', '2023-08-08', '2099-12-31'),
(19, 'Premium Monthly', '2024-02-14', '2025-02-14'),(20, 'Premium Annual', '2024-01-20', '2025-01-20'),(21, 'Premium Monthly', '2024-03-10', '2025-03-10'),
(22, 'Free Tier', '2023-11-11', '2099-12-31'),(23, 'Premium Monthly', '2024-01-25', '2025-01-25'),(24, 'Premium Monthly', '2024-02-28', '2025-02-28'),
(25, 'Premium Annual', '2024-03-30', '2025-03-30'),(26, 'Student Discount', '2024-01-12', '2025-01-12'),(27, 'Free Tier', '2023-09-09', '2099-12-31'),
(28, 'Premium Monthly', '2024-04-10', '2025-04-10'),(29, 'Premium Monthly', '2024-05-01', '2025-05-01'),(30, 'Premium Monthly', '2024-01-30', '2025-01-30'),
(31, 'Premium Annual', '2024-02-02', '2025-02-02'),(32, 'Free Tier', '2023-01-20', '2099-12-31'),(33, 'Premium Monthly', '2024-03-03', '2025-03-03'),
(34, 'Premium Monthly', '2024-01-18', '2025-01-18'),(35, 'Premium Annual', '2024-04-05', '2025-04-05'),(36, 'Student Discount', '2024-02-12', '2025-02-12'),
(37, 'Free Tier', '2023-06-06', '2099-12-31'),(38, 'Premium Monthly', '2024-03-12', '2025-03-12'),(39, 'Premium Monthly', '2024-01-22', '2025-01-22'),
(40, 'Premium Annual', '2024-05-15', '2025-05-15');

-- ---------------------------------------------------------
-- 2. RECORD LABELS
-- ---------------------------------------------------------
INSERT INTO record_label (record_label_name) VALUES
('Scantraxx Recordz'),('Revealed Recordings'),('Dirty Workz'),('Spinnin Records'),('Monstercat'),('Afterlife'),
('Drumcode'),('Q-dance Records'),('Armada Music'),('Art of Creation'),('End of Line'),('Smash The House'),
('STMPD RCRDS'),('AOC Recordings'),('Defqon.1 Label'),('Minus is More'),('KNTXT'),('Trip Recordings'),
('Spoontech'),('Theracords'),('Roughstate'),('Nightbreed'),('Barong Family'),('Musical Freedom'),
('Protocol Recordings'),('Hexagon'),('Wall Recordings'),('Toolroom'),('Mau5trap'),('Anjunabeats'),
('Bitbird'),('OWSLA'),('Mad Decent'),('W&W Mainstage'),('Masters of Hardcore'),('Neophyte Records'),
('Traxtorm'),('Gearbox Digital'),('Aggressive Records'),('Apex Records');

-- ---------------------------------------------------------
-- 3. VENUES
-- ---------------------------------------------------------
INSERT INTO venue (venue_name, venue_city) VALUES
('Evenemententerrein', 'Biddinghuizen'),('De Schorre', 'Boom'),('Bayfront Park', 'Miami'),('Jaarbeurs', 'Utrecht'),
('Gashouder', 'Amsterdam'),('Ziggo Dome', 'Amsterdam'),('Motor Speedway', 'Las Vegas'),('Airport Weeze', 'Weeze'),
('Ushuaïa', 'Ibiza'),('Red Rocks', 'Denver'),('Daresbury Estate', 'Warrington'),('Exponyc', 'New York'),
('Printworks', 'London'),('RAI Amsterdam', 'Amsterdam'),('Brooklyn Mirage', 'New York'),('Berghain', 'Berlin'),
('The Warehouse Project', 'Manchester'),('Fabrik', 'Madrid'),('Zouk', 'Singapore'),('AgeHa', 'Tokyo');

-- ---------------------------------------------------------
-- 4. TICKETS
-- ---------------------------------------------------------
INSERT INTO ticket (ticket_id, ticket_price, ticket_status) VALUES
(1, 245.00, 'sold out'), (2, 85.50, 'available'), (3, 310.00, 'available'),(4, 399.99, 'available'), (5, 75.00, 'available'), (6, 150.00, 'on hold'),
(7, 450.00, 'available'), (8, 120.00, 'available'), (9, 25.00, 'available'),(10, 500.00, 'available'), (11, 65.00, 'available'), (12, 199.00, 'sold out'),
(13, 220.00, 'available'), (14, 280.00, 'available'), (15, 95.00, 'available'),(16, 110.00, 'available'), (17, 350.00, 'available'), (18, 55.00, 'available'),
(19, 45.00, 'available'), (20, 15.00, 'available'), (21, 100.00, 'available'),(22, 125.00, 'available'), (23, 175.00, 'available'), (24, 210.00, 'available'),
(25, 290.00, 'available'), (26, 330.00, 'available'), (27, 420.00, 'available'),(28, 480.00, 'available'), (29, 60.00, 'available'), (30, 80.00, 'available'),
(31, 90.00, 'available'), (32, 115.00, 'available'), (33, 140.00, 'available'),(34, 160.00, 'available'), (35, 200.00, 'available'), (36, 230.00, 'available'),
(37, 260.00, 'available'), (38, 300.00, 'available'), (39, 320.00, 'available'),(40, 380.00, 'available');

-- ---------------------------------------------------------
-- 5. ALBUMS
-- ---------------------------------------------------------
INSERT INTO album (album_id, album_title, album_release_date) VALUES
(1, 'Renaissance of Raw', '2023-05-20'), (2, 'Rebels Never Die', '2022-09-15'),(3, 'Path of the Warrior', '2023-06-25'), (4, 'Sentience', '2024-02-10'),
(5, 'Balance', '2019-10-25'), (6, 'The Enlightenment', '2024-03-15'),(7, 'Project 1', '2008-05-15'), (8, 'Acid Reign', '2023-09-22'),
(9, 'Techno Theory', '2023-01-01'), (10, 'Future House Anthems', '2023-02-01'),(11, 'Dubstep Disruption', '2023-03-01'), (12, 'Hardcore Power', '2023-04-01'),
(13, 'Trance Universe', '2023-05-01'), (14, 'Raw Energy', '2023-06-01'),(15, 'Euphoric Vibes', '2023-07-01'), (16, 'Techno Soul', '2023-08-01'),
(17, 'Mainstage Madness', '2023-09-01'), (18, 'Deep House Dreams', '2023-10-01'),(19, 'Bass Boost', '2023-11-01'), (20, 'Dance Floor Killers', '2023-12-01'),
(21, 'Festival Season', '2024-01-10'), (22, 'Beats & Bass', '2024-02-10'),(23, 'Nightlife Anthems', '2024-03-10'), (24, 'Sunrise Sessions', '2024-04-10'),
(25, 'Midnight Melodies', '2024-05-10'), (26, 'Electric Dreams', '2024-06-10'),(27, 'Cyber Beats', '2024-07-10'), (28, 'Rave Culture', '2024-08-10'),
(29, 'Sonic Boom', '2024-09-10'), (30, 'Echoes of EDM', '2024-10-10'),(31, 'Digital Pulse', '2024-11-10'), (32, 'Techno Tides', '2024-12-10'),
(33, 'Hardstyle Hearts', '2025-01-10'), (34, 'Synth City', '2025-02-10'),(35, 'Melodic Mayhem', '2025-03-10'), (36, 'Bassline Bliss', '2025-04-10'),
(37, 'Rhythm & Raw', '2025-05-10'), (38, 'EDM Evolution', '2025-06-10'),(39, 'Dark Room Anthems', '2023-12-30'), (40, 'Apex Selection', '2024-01-05'),
(41, 'Rawstate Vol 1', '2023-04-12'), (42, 'Electronic Earth', '2012-04-02'),(43, 'True Hardstyle', '2010-10-10'), (44, 'Acid Reign Remixed', '2024-01-15'),
(45, 'Universal Nation', '2022-04-10'), (46, 'Neon Future', '2014-09-30'),(47, 'Pressure', '2021-06-04'), (48, 'Simulation', '2022-12-01'),
(49, 'Apex Heritage', '2024-03-01'), (50, 'The Project Finale', '2023-11-15');

-- ---------------------------------------------------------
-- 6. PODCASTS
-- ---------------------------------------------------------
INSERT INTO podcast (podcast_id, podcast_title) VALUES
(1, 'Hardwell On Air'), (2, 'A State of Trance'), (3, 'Defqon.1 Radio'),(4, 'Revealed Radio'), (5, 'Art of Creation Podcast'), (6, 'KNTXT Radio'),
(7, 'The Prophet: Louder'), (8, 'Drumcode Radio'), (9, 'Spinnin Sessions'),(10, 'Monstercat Silk'), (11, 'Masters of Hardcore Podcast'), (12, 'Roughstate Radio'),
(13, 'Gearbox Digital Podcast'), (14, 'Hardstyle.com Radio'), (15, 'Spoontech Society');

-- ---------------------------------------------------------
-- 7. USERS
-- ---------------------------------------------------------
INSERT INTO user (user_id, first_name, last_name, email_address, password_hash, date_of_birth, country, subscription_id) VALUES
(1, 'Thijs', 'de Boer', 'thijs@rave.nl', 'h01', '1995-04-12', 'Netherlands', 1),(2, 'Sarah', 'Miller', 'sarah@edm.com', 'h02', '1992-08-25', 'USA', 2),
(3, 'Min-ho', 'Kim', 'minho.k@naver.kr', 'h03', '1998-11-03', 'South Korea', 3),(4, 'Camille', 'Lefebvre', 'cam@orange.fr', 'h04', '2000-01-15', 'France', 1),
(5, 'Mateo', 'Silva', 'mateo@uol.br', 'h05', '1994-06-30', 'Brazil', 4),(6, 'Elena', 'Rossi', 'elena@libero.it', 'h06', '1997-03-21', 'Italy', 3),
(7, 'Yuki', 'Tanaka', 'yuki@yahoo.jp', 'h07', '1999-09-09', 'Japan', 2),(8, 'Liam', 'O Connor', 'liam@outlook.ie', 'h08', '1993-12-14', 'Ireland', 5),
(9, 'Anika', 'Sharma', 'anika@rediff.in', 'h09', '1996-07-05', 'India', 3),(10, 'Hans', 'Müller', 'hans@web.de', 'h10', '1991-02-18', 'Germany', 6),
(11, 'Fatima', 'Al-Fayed', 'fat@dubai.ae', 'h11', '1994-08-20', 'UAE', 1),(12, 'Piotr', 'Novak', 'piotr@wp.pl', 'h12', '1993-11-12', 'Poland', 2),
(13, 'Ximena', 'Torres', 'ximena@gmail.cl', 'h13', '1996-05-05', 'Chile', 3),(14, 'Arnaud', 'Vasseur', 'arnaud@skynet.be', 'h14', '1992-04-18', 'Belgium', 1),
(15, 'Mina', 'Hwang', 'mina@naver.kr', 'h15', '1995-07-07', 'South Korea', 5),(16, 'Lars', 'Svensson', 'lars@telia.se', 'h16', '1990-11-28', 'Sweden', 2),
(17, 'Sofia', 'Rodriguez', 'sofia@gmail.mx', 'h17', '1997-10-31', 'Mexico', 3),(18, 'Noah', 'Williams', 'noah@rave.au', 'h18', '1999-07-17', 'Australia', 4),
(19, 'Zoe', 'Smith', 'zoe@gmail.ca', 'h19', '2000-12-01', 'Canada', 1),(20, 'Chen', 'Wei', 'chen@qq.com', 'h20', '2001-08-14', 'China', 2),
(21, 'Ingrid', 'Bergman', 'ing@web.no', 'h21', '1993-03-03', 'Norway', 3),(22, 'Sven', 'Jansen', 'sven@rave.nl', 'h22', '1994-06-22', 'Netherlands', 6),
(23, 'Lucas', 'Mendes', 'luke@sapo.pt', 'h23', '1992-02-02', 'Portugal', 1),(24, 'Amara', 'Okonkwo', 'amara@rave.ng', 'h24', '1997-11-11', 'Nigeria', 2),
(25, 'Frederik', 'Nielsen', 'fred@dk.com', 'h25', '1995-12-10', 'Denmark', 3),(26, 'Marta', 'Fernandez', 'marta@terra.es', 'h26', '1998-02-14', 'Spain', 4),
(27, 'Laila', 'Said', 'laila@ma.com', 'h27', '1996-03-20', 'Morocco', 1),(28, 'Viktor', 'Hajek', 'vik@seznam.cz', 'h28', '1994-05-18', 'Czech Republic', 5),
(29, 'Nina', 'Kuznetsova', 'nina@mail.ru', 'h29', '1997-09-21', 'Russia', 2),(30, 'Oscar', 'Nilsson', 'oscar@se.com', 'h30', '1993-01-30', 'Sweden', 3),
(31, 'Hanna', 'Mayr', 'hanna@gmx.at', 'h31', '1996-10-12', 'Austria', 1),(32, 'Fabio', 'Conti', 'fabio@libero.it', 'h32', '1992-09-18', 'Italy', 2),
(33, 'Paul', 'Durand', 'paul@orange.fr', 'h33', '1991-06-17', 'France', 3),(34, 'Andres', 'Castillo', 'and@cl.com', 'h34', '1993-06-12', 'Chile', 4),
(35, 'Jin', 'Sato', 'jin@yahoo.jp', 'h35', '1997-12-01', 'Japan', 1),(36, 'Kelly', 'Clark', 'kelly@edm.com', 'h36', '1996-03-14', 'USA', 2),
(37, 'Theo', 'Leroy', 'theo@free.fr', 'h37', '1994-03-03', 'France', 3),(38, 'Mei', 'Suzuki', 'mei@qq.com', 'h38', '1997-02-11', 'China', 6),
(39, 'Marco', 'Fabbri', 'marco@web.it', 'h39', '1995-11-22', 'Italy', 1),(40, 'Alice', 'Ruiz', 'alice@terra.es', 'h40', '1997-01-31', 'Spain', 2),
(41, 'Chris', 'Evans', 'chris@rave.us', 'h41', '1993-10-02', 'USA', 3),(42, 'Clara', 'Schulz', 'clara@gmx.de', 'h42', '1999-07-25', 'Germany', 4),
(43, 'Gabriel', 'Oliveira', 'gab@uol.br', 'h43', '1993-04-25', 'Brazil', 1),(44, 'Amina', 'Diallo', 'amina@sn.com', 'h44', '1996-01-10', 'Senegal', 2),
(45, 'Arrav', 'Gupta', 'arrav@in.com', 'h45', '1995-09-18', 'India', 3),(46, 'Ryan', 'Gauthier', 'ryan@edm.ca', 'h46', '1992-05-20', 'Canada', 5),
(47, 'Heidi', 'Klump', 'heidi@web.de', 'h47', '1991-03-22', 'Germany', 1),(48, 'Svenja', 'Koch', 'svenja@gmx.de', 'h48', '2000-03-05', 'Germany', 2),
(49, 'Linh', 'Tran', 'linh@vn.com', 'h49', '1997-04-12', 'Vietnam', 3),(50, 'Bao', 'Nguyen', 'bao@vn.com', 'h50', '1994-11-30', 'Vietnam', 4),
(51, 'Omar', 'Ghanem', 'omar@eg.com', 'h51', '1996-08-20', 'Egypt', 1),(52, 'Leila', 'Haddad', 'leila@lb.com', 'h52', '1998-03-30', 'Lebanon', 2),
(53, 'Takumi', 'Ito', 'tak@jp.com', 'h53', '1994-12-24', 'Japan', 3),(54, 'Charlotte', 'Willems', 'char@be.com', 'h54', '1995-06-05', 'Belgium', 6),
(55, 'Luca', 'Berger', 'luca@gmx.at', 'h55', '1993-08-30', 'Austria', 1),(56, 'Andrea', 'Schmid', 'and@ch.com', 'h56', '1996-12-25', 'Switzerland', 2),
(57, 'Klaus', 'Weber', 'klaus@gmx.de', 'h57', '1990-05-05', 'Germany', 3),(58, 'Marta', 'Silva', 'marta@uol.br', 'h58', '1995-04-04', 'Brazil', 4),
(59, 'Pierre', 'Lemoine', 'pierre@orange.fr', 'h59', '1992-03-03', 'France', 1),(60, 'Soji', 'Tanaka', 'soji@jp.com', 'h60', '1994-02-02', 'Japan', 2),
(61, 'Emily', 'Frost', 'em@rave.uk', 'h61', '1996-01-01', 'UK', 3),(62, 'Ivan', 'Petrov', 'ivan@mail.ru', 'h62', '1998-12-12', 'Russia', 5),
(63, 'David', 'Brown', 'david@edm.us', 'h63', '1991-11-11', 'USA', 1),(64, 'Kim', 'Soo', 'kim@naver.kr', 'h64', '1993-10-10', 'South Korea', 2),
(65, 'Carlos', 'Gomez', 'carlos@terra.es', 'h65', '1995-09-09', 'Spain', 3),(66, 'Arnav', 'Reddy', 'arn@in.com', 'h66', '1997-08-08', 'India', 4),
(67, 'Sophie', 'Dubois', 'soph@orange.fr', 'h67', '1999-07-07', 'France', 1),(68, 'Jan', 'Kowalski', 'jan@wp.pl', 'h68', '2001-06-06', 'Poland', 2),
(69, 'Emma', 'Wilson', 'emma@edm.uk', 'h69', '1990-05-05', 'UK', 3),(70, 'Oscar', 'Nilsson', 'oscar@se.com', 'h70', '1992-04-04', 'Sweden', 6),
(71, 'Nina', 'Müller', 'nina@gmx.de', 'h71', '1994-03-03', 'Germany', 1),(72, 'Alex', 'Torres', 'alex@cl.com', 'h72', '1996-02-02', 'Chile', 2),
(73, 'Yumi', 'Sato', 'yumi@yahoo.jp', 'h73', '1998-01-01', 'Japan', 3),(74, 'Arnaud', 'Petit', 'arnaud@orange.fr', 'h74', '1991-12-12', 'France', 4),
(75, 'Fatima', 'Said', 'fat@eg.com', 'h75', '1993-11-11', 'Egypt', 1);

-- ---------------------------------------------------------
-- 8. ARTISTS
-- ---------------------------------------------------------
INSERT INTO artist (artist_id, artist_name, artist_genre, record_label_name) VALUES
(1, 'Sub Zero Project', 'Rawstyle', 'Dirty Workz'),(2, 'Hardwell', 'Bigroom House', 'Revealed Recordings'),
(3, 'Headhunterz', 'Euphoric Hardstyle', 'Art of Creation'),(4, 'Charlotte de Witte', 'Techno', 'Afterlife'),
(5, 'Martin Garrix', 'Progressive House', 'STMPD RCRDS'),(6, 'D-Sturb', 'Rawstyle', 'End of Line'),
(7, 'Armin van Buuren', 'Trance', 'Armada Music'),(8, 'Sefa', 'Frenchcore', 'Q-dance Records'),
(9, 'Phuture Noize', 'Modern Hardstyle', 'Dirty Workz'),(10, 'Amelie Lens', 'Acid Techno', 'Drumcode'),
(11, 'Ran-D', 'Rawstyle', 'Roughstate'),(12, 'Wildstylez', 'Euphoric Hardstyle', 'Scantraxx Recordz'),
(13, 'Alignment', 'Hard Techno', 'Afterlife'),(14, 'Tiësto', 'Trance/EDM', 'Spinnin Records'),
(15, 'Vasto', 'Industrial', 'Spoontech'),(16, 'Adaro', 'Rawstyle', 'Roughstate'),
(17, 'B-Front', 'Mystical Hardstyle', 'Roughstate'),(18, 'Vertile', 'Rawstyle', 'Apex Records'),
(19, 'Brennan Heart', 'Euphoric', 'AOC Recordings'),(20, 'Angerfist', 'Hardcore', 'Masters of Hardcore'),
(21, 'Radical Redemption', 'Rawstyle', 'Minus is More'),(22, 'Deadmau5', 'Progressive', 'Mau5trap'),
(23, 'Skrillex', 'Dubstep', 'OWSLA'),(24, 'Don Diablo', 'Future House', 'Hexagon'),
(25, 'Nicky Romero', 'Progressive', 'Protocol Recordings'),(26, 'Afrojack', 'Dutch House', 'Wall Recordings'),
(27, 'Oliver Heldens', 'Future House', 'Spinnin Records'),(28, 'W&W', 'Bigroom', 'W&W Mainstage'),
(29, 'Nina Kraviz', 'Techno', 'Trip Recordings'),(30, 'Carl Cox', 'Techno', 'Toolroom');

-- ---------------------------------------------------------
-- 9. SONGS
-- ---------------------------------------------------------
INSERT INTO song (song_id, song_title, song_duration, album_id) VALUES
(1, 'Psychodelic', 210, 1), (2, 'LASER', 195, 1), (3, 'PACMAN', 188, 2),(4, 'Spaceman 2022', 205, 2), (5, 'Destiny', 230, 3), (6, 'Orange Heart', 245, 3),
(7, 'Age of Love', 360, 4), (8, 'The Enlightenment', 300, 6), (9, 'Luminance', 190, 6),(10, 'Project One Anthem', 240, 7), (11, 'Acid Reign Kick', 315, 8), (12, 'Techno Beat 1', 300, 9),
(13, 'Future Bounce', 180, 10), (14, 'Dubstep Drop A', 220, 11), (15, 'Hardcore Power', 150, 12),(16, 'Trance Universe', 420, 13), (17, 'Raw Energy Track', 210, 14), (18, 'Euphoric Vibes 1', 240, 15),
(19, 'Techno Soul Mix', 310, 16), (20, 'Mainstage Hit', 180, 17), (21, 'Deep Dreams Track', 360, 18),(22, 'Bass Boost Max', 195, 19), (23, 'Dance Floor Killer', 210, 20), (24, 'Festival Season Anthem', 240, 21),
(25, 'Beats & Bass 101', 180, 22), (26, 'Nightlife Anthems 1', 220, 23), (27, 'Sunrise Sessions Mel', 240, 24),(28, 'Midnight Melodies Mix', 230, 25), (29, 'Electric Dreams Track', 210, 26), (30, 'Cyber Beats Pro', 195, 27),
(31, 'Rave Culture Hit', 205, 28), (32, 'Sonic Boom Track', 185, 29), (33, 'Echoes of EDM 1', 215, 30),(34, 'Digital Pulse Wave', 200, 31), (35, 'Techno Tides Flow', 320, 32), (36, 'Hardstyle Hearts 1', 210, 33),
(37, 'Synth City Track', 240, 34), (38, 'Melodic Mayhem Beat', 190, 35), (39, 'Bassline Bliss Mix', 225, 36),(40, 'Rhythm & Raw Energy', 210, 37), (41, 'EDM Evolution Track', 190, 38), (42, 'Dark Room Lead', 240, 39),
(43, 'Apex Legacy Hit', 230, 40), (44, 'Rawstate Power', 210, 41), (45, 'Earth Beats', 250, 42),(46, 'True Hard Energy', 180, 43), (47, 'Acid Reign Remix', 220, 44), (48, 'Universal Trance', 240, 45),
(49, 'Neon Future Beat', 195, 46), (50, 'Pressure Drop', 180, 47), (51, 'Simulated Reality', 210, 48),(52, 'Apex Heritage Mix', 220, 49), (53, 'Project Finale Outro', 230, 50), (54, 'Hardstyle Love', 190, 33),
(55, 'Techno Force', 310, 16), (56, 'Future Bass Hit', 200, 22), (57, 'Rawstyle Kick Out', 215, 14),(58, 'Euphoric Cloud', 240, 15), (59, 'Trance Galaxy', 400, 13), (60, 'Hardcore Spirit', 160, 12),
(61, 'Beat 1', 120, 21), (62, 'Beat 2', 130, 22), (63, 'Beat 3', 140, 23), (64, 'Beat 4', 150, 24),(65, 'Melody 1', 160, 25), (66, 'Melody 2', 170, 26), (67, 'Melody 3', 180, 27), (68, 'Melody 4', 190, 28),
(69, 'Rhythm 1', 200, 29), (70, 'Rhythm 2', 210, 30), (71, 'Rhythm 3', 220, 31), (72, 'Rhythm 4', 230, 32),(73, 'Synth 1', 240, 33), (74, 'Synth 2', 250, 34), (75, 'Synth 3', 180, 35), (76, 'Synth 4', 190, 36),
(77, 'Zero', 180, 17), (78, 'One', 220, 18), (79, 'Ten', 230, 19), (80, 'Hundred', 195, 20);

-- ---------------------------------------------------------
-- 10. MERCH & STOCK
-- ---------------------------------------------------------
INSERT INTO merch (merch_id, merch_name, merch_price) VALUES
(1, 'Defqon.1 Hoodie', 75.00), (2, 'Revealed Snapback', 25.00),(3, 'Tomorrowland Bracelet', 15.00), (4, 'Hardwell T-Shirt', 35.00),
(5, 'SZP Flags', 20.00), (6, 'KNTXT Vinyl', 45.00),(7, 'Techno Totebag', 12.00), (8, 'Hardcore Bomber', 120.00),
(9, 'Euphoric Fan', 10.00), (10, 'Q-dance Flag', 30.00),(11, 'Spinnin Records Hoodie', 60.00), (12, 'Acid Reign Poster', 15.00),
(13, 'Rawstyle Wristband', 5.00), (14, 'Hardcore Patch', 5.00),(15, 'Festival Bag', 20.00), (16, 'Earplugs Pro', 25.00),
(17, 'Power Bank', 35.00), (18, 'Lanyard', 8.00),(19, 'Sunglasses', 15.00), (20, 'Beanie', 20.00);

INSERT INTO stock (merch_id, stock_quantity) VALUES
(1, 1500), (2, 450), (3, 10000), (4, 800), (5, 2000), (6, 150), (7, 3000),(8, 250), (9, 500), (10, 1200), (11, 400), (12, 1000), (13, 5000), (14, 2500),
(15, 1500), (16, 500), (17, 300), (18, 2000), (19, 1000), (20, 800);

-- ---------------------------------------------------------
-- 11. EVENTS
-- ---------------------------------------------------------
INSERT INTO event (event_id, event_name, event_start_date, event_end_date, venue_name, ticket_id, merch_id) VALUES
(1, 'Defqon.1 2024', '2024-06-28', '2024-06-30', 'Evenemententerrein', 1, 2),
(2, 'Tomorrowland', '2024-07-19', '2024-07-28', 'De Schorre', 3, 3),
(3, 'Ultra Miami', '2024-03-22', '2024-03-24', 'Bayfront Park', 4, 5),
(4, 'Thunderdome 2024', '2024-12-14', '2024-12-14', 'Jaarbeurs', 12, 8),
(5, 'Awakenings Gashouder', '2024-05-12', '2024-05-12', 'Gashouder', 5, 6),
(6, 'AMF Amsterdam', '2024-10-19', '2024-10-19', 'Ziggo Dome', 7, 2),
(7, 'EDC Las Vegas', '2024-05-17', '2024-05-19', 'Motor Speedway', 10, 15),
(8, 'Parookaville', '2024-07-21', '2024-07-23', 'Airport Weeze', 14, 11),
(9, 'Time Warp London', '2024-04-06', '2024-04-06', 'Printworks', 15, 7),
(10, 'Creamfields', '2024-08-22', '2024-08-25', 'Daresbury Estate', 17, 10),
(11, 'Untold Festival', '2024-08-08', '2024-08-11', 'RAI Amsterdam', 13, 13),
(12, 'Sonar Barcelona', '2024-06-13', '2024-06-15', 'Fabrik', 16, 4),
(13, 'ZoukOut', '2024-12-01', '2024-12-01', 'Zouk', 20, 18),
(14, 'Red Rocks Night', '2024-09-15', '2024-09-15', 'Red Rocks', 11, 20),
(15, 'Brooklyn Mirage', '2024-06-01', '2024-06-02', 'Brooklyn Mirage', 18, 16),
(16, 'Berghain Weekend', '2024-05-01', '2024-05-03', 'Berghain', 19, 12),
(17, 'Ushuaia Opening', '2024-05-20', '2024-05-20', 'Ushuaïa', 8, 5),
(18, 'Fabrik Madrid', '2024-11-11', '2024-11-12', 'Fabrik', 2, 9),
(19, 'AgeHa Final', '2024-01-30', '2024-01-31', 'AgeHa', 1, 14),
(20, 'Farewell Session', '2024-04-10', '2024-04-12', 'Printworks', 40, 19);

-- ---------------------------------------------------------
-- 12. RELATIONSHIP LINK TABLES
-- ---------------------------------------------------------
INSERT INTO performs (artist_id, song_id) VALUES
(1,1), (1,2), (2,3), (2,4), (3,5), (3,6), (4,7), (6,8), (9,9), (7,10);

INSERT INTO releases (artist_id, album_id) VALUES
(1,1), (2,2), (3,3), (4,4), (9,5), (6,6), (1,7), (3,7), (5,9), (11,10);

INSERT INTO listening_timestamp (user_id, song_id, listening_timestamp_date) VALUES
(1, 1, '2024-03-15 10:00:00'), (1, 2, '2024-03-15 10:05:00'),
(2, 3, '2024-03-15 11:20:00'), (3, 6, '2024-03-15 12:45:00'),
(4, 7, '2024-03-15 13:10:00'), (5, 5, '2024-03-15 14:00:00'),
(6, 60, '2024-03-15 15:30:00'), (7, 4, '2024-03-15 16:15:00'),
(8, 22, '2024-03-15 17:00:00'), (1, 54, '2024-03-15 18:20:00'),
(11, 40, '2024-03-15 19:30:00'), (12, 12, '2024-03-15 20:00:00'),
(15, 1, '2024-03-15 21:00:00'), (20, 80, '2024-03-15 22:00:00'),
(33, 33, '2024-03-15 23:00:00'), (75, 1, '2024-03-16 00:00:00'),
(22, 22, '2024-03-16 01:00:00'), (44, 44, '2024-03-16 02:00:00'),
(55, 55, '2024-03-16 03:00:00'), (66, 66, '2024-03-16 04:00:00');

INSERT INTO follows (user_id, artist_id) VALUES
(1, 1), (1, 3), (2, 2), (3, 5), (4, 4), (5, 1), (6, 8), (11, 1), (12, 13);

INSERT INTO collabs (artist_id, artist_id_1) VALUES
(1, 3), (1, 5), (2, 6), (3, 7), (4, 8), (9, 1), (10, 4);

-- ---------------------------------------------------------
-- FINAL COMMIT
-- ---------------------------------------------------------
COMMIT;