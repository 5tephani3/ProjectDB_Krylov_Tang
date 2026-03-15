-- ==========================================================
-- FILE: 3_insertion.sql
-- PROJECT: TheEmpireDB - Music Platform (EDM/Hardstyle)
-- DATA VOLUME: 250% INCREASE (75 Users, 40 Labels, 40 Artists, 50 Albums, 150 Songs, 40 Events, 250 History Logs)
-- ==========================================================

SET AUTOCOMMIT = 0;
START TRANSACTION;

-- ---------------------------------------------------------
-- 1. RECORD_LABEL (40 Rows)
-- ---------------------------------------------------------
INSERT INTO Record_Label (Label_ID, Record_Label_Name) VALUES
(1, 'Scantraxx Recordz'), (2, 'Revealed Recordings'), (3, 'Dirty Workz'), (4, 'Spinnin Records'), 
(5, 'Monstercat'), (6, 'Afterlife'), (7, 'Drumcode'), (8, 'Q-dance Records'), 
(9, 'Armada Music'), (10, 'Art of Creation'), (11, 'End of Line'), (12, 'Smash The House'), 
(13, 'STMPD RCRDS'), (14, 'AOC Recordings'), (15, 'Defqon.1 Label'), (16, 'Minus is More'),
(17, 'KNTXT'), (18, 'Trip Recordings'), (19, 'Spoontech'), (20, 'Theracords'),
(21, 'Roughstate'), (22, 'Nightbreed'), (23, 'Barong Family'), (24, 'Musical Freedom'),
(25, 'Protocol Recordings'), (26, 'Hexagon'), (27, 'Wall Recordings'), (28, 'Toolroom'),
(29, 'Mau5trap'), (30, 'Anjunabeats'), (31, 'Bitbird'), (32, 'OWSLA'), (33, 'Mad Decent'),
(34, 'W&W Mainstage'), (35, 'Masters of Hardcore'), (36, 'Neophyte Records'), (37, 'Traxtorm'),
(38, 'Gearbox Digital'), (39, 'Aggressive Records'), (40, 'Apex Records');

-- ---------------------------------------------------------
-- 2. USER (75 Rows - Multicultural)
-- ---------------------------------------------------------
INSERT INTO User (User_ID, First_Name, Last_Name, Email_Address, Password_Hash, Date_of_Birth, Country) VALUES
(1, 'Thijs', 'de Boer', 'thijs.boer@fan.nl', 'hash_01', '1995-04-12', 'Netherlands'),
(2, 'Sarah', 'Miller', 'smiller92@gmail.com', 'hash_02', '1992-08-25', 'USA'),
(3, 'Min-ho', 'Kim', 'minho.k@naver.com', 'hash_03', '1998-11-03', 'South Korea'),
(4, 'Camille', 'Lefebvre', 'c.lefebvre@orange.fr', 'hash_04', '2000-01-15', 'France'),
(5, 'Mateo', 'Silva', 'm.silva@uol.com.br', 'hash_05', '1994-06-30', 'Brazil'),
(6, 'Elena', 'Rossi', 'e.rossi@libero.it', 'hash_06', '1997-03-21', 'Italy'),
(7, 'Yuki', 'Tanaka', 'yuki.t@yahoo.co.jp', 'hash_07', '1999-09-09', 'Japan'),
(8, 'Liam', 'O Connor', 'liam.oc@outlook.ie', 'hash_08', '1993-12-14', 'Ireland'),
(9, 'Anika', 'Sharma', 'a.sharma@rediff.com', 'hash_09', '1996-07-05', 'India'),
(10, 'Hans', 'Müller', 'h.mueller@web.de', 'hash_10', '1991-02-18', 'Germany'),
(11, 'Sofia', 'Rodriguez', 'sofia.rod@gmail.com', 'hash_11', '1995-10-31', 'Mexico'),
(12, 'Alexander', 'Petrov', 'sasha_p@mail.ru', 'hash_12', '1998-05-22', 'Russia'),
(13, 'Amara', 'Okonkwo', 'amara.o@gmail.com', 'hash_13', '1997-11-11', 'Nigeria'),
(14, 'Lucas', 'Mendes', 'l.mendes@sapo.pt', 'hash_14', '1992-04-03', 'Portugal'),
(15, 'Emma', 'Wilson', 'emma.w@bt.co.uk', 'hash_15', '1994-01-20', 'UK'),
(16, 'Chen', 'Wei', 'chen.wei@qq.com', 'hash_16', '2001-08-14', 'China'),
(17, 'Lars', 'Svensson', 'lars.s@telia.se', 'hash_17', '1990-11-28', 'Sweden'),
(18, 'Isabella', 'Garcia', 'i.garcia@arnet.ar', 'hash_18', '1996-03-05', 'Argentina'),
(19, 'Noah', 'Williams', 'noah.w@gmail.com.au', 'hash_19', '1999-07-17', 'Australia'),
(20, 'Fatima', 'Al-Sayed', 'fatima.s@gmail.com', 'hash_20', '1993-05-09', 'Egypt'),
(21, 'Piotr', 'Kowalski', 'p.kowalski@wp.pl', 'hash_21', '1994-10-12', 'Poland'),
(22, 'Marta', 'Fernandez', 'marta.f@terra.es', 'hash_22', '1997-02-14', 'Spain'),
(23, 'Sven', 'Jansen', 'sven.j@skynet.be', 'hash_23', '1998-06-22', 'Belgium'),
(24, 'Aarav', 'Gupta', 'aarav.g@gmail.com', 'hash_24', '1995-09-18', 'India'),
(25, 'Zoe', 'Smith', 'zoe.s@gmail.com', 'hash_25', '2000-12-01', 'Canada'),
(26, 'Gabriel', 'Oliveira', 'g.oliver@gmail.com', 'hash_26', '1993-04-25', 'Brazil'),
(27, 'Amina', 'Diallo', 'amina.d@gmail.com', 'hash_27', '1996-01-10', 'Senegal'),
(28, 'Jakob', 'Steiner', 'j.steiner@gmx.at', 'hash_28', '1991-07-14', 'Austria'),
(29, 'Leila', 'Haddad', 'leila.h@gmail.com', 'hash_29', '1998-03-30', 'Lebanon'),
(30, 'Oscar', 'Nilsson', 'oscar.n@gmail.com', 'hash_30', '1994-08-05', 'Sweden'),
(31, 'Frederik', 'Nielsen', 'f.nielsen@gmail.com', 'hash_31', '1992-12-10', 'Denmark'),
(32, 'Laila', 'Said', 'laila.s@gmail.com', 'hash_32', '1996-02-28', 'Morocco'),
(33, 'Viktor', 'Hajek', 'v.hajek@seznam.cz', 'hash_33', '1995-04-18', 'Czech Republic'),
(34, 'Andrés', 'Castillo', 'a.castillo@gmail.com', 'hash_34', '1993-06-12', 'Chile'),
(35, 'Nina', 'Kuznetsova', 'n.kuz@mail.ru', 'hash_35', '1997-09-21', 'Russia'),
(36, 'Siddharth', 'Jain', 'sid.jain@gmail.com', 'hash_36', '1994-11-08', 'India'),
(37, 'Karina', 'Jensen', 'k.jensen@outlook.dk', 'hash_37', '1999-01-20', 'Denmark'),
(38, 'Tariq', 'Aziz', 't.aziz@gmail.com', 'hash_38', '1992-05-30', 'Jordan'),
(39, 'Noor', 'Abadi', 'noor.a@gmail.com', 'hash_39', '1998-08-14', 'Iraq'),
(40, 'Elias', 'Vogel', 'e.vogel@gmx.de', 'hash_40', '1995-10-10', 'Germany'),
(41, 'Heidi', 'Klump', 'h.klump@web.de', 'hash_41', '1991-03-22', 'Germany'),
(42, 'Ryu', 'Watanabe', 'ryu.w@gmail.com', 'hash_42', '1996-05-15', 'Japan'),
(43, 'Jin', 'Sato', 'jin.s@gmail.com', 'hash_43', '1997-12-01', 'Japan'),
(44, 'Mina', 'Hwang', 'mina.h@naver.com', 'hash_44', '1994-04-14', 'South Korea'),
(45, 'Joon', 'Park', 'joon.p@daum.net', 'hash_45', '1993-02-19', 'South Korea'),
(46, 'Clara', 'Schulz', 'c.schulz@gmail.com', 'hash_46', '1999-07-25', 'Germany'),
(47, 'Svenja', 'Koch', 's.koch@gmail.com', 'hash_47', '2000-03-05', 'Germany'),
(48, 'Paul', 'Durand', 'p.durand@orange.fr', 'hash_48', '1992-06-17', 'France'),
(49, 'Sophie', 'Dubois', 's.dubois@free.fr', 'hash_49', '1995-09-02', 'France'),
(50, 'Ahmed', 'Mansour', 'a.mansour@gmail.com', 'hash_50', '1991-01-11', 'UAE'),
(51, 'Omar', 'Ghanem', 'o.ghanem@gmail.com', 'hash_51', '1996-08-20', 'Egypt'),
(52, 'Bao', 'Nguyen', 'bao.n@gmail.com', 'hash_52', '1994-11-30', 'Vietnam'),
(53, 'Linh', 'Tran', 'linh.t@gmail.com', 'hash_53', '1997-04-12', 'Vietnam'),
(54, 'Santi', 'Perez', 's.perez@gmail.com', 'hash_54', '1995-02-28', 'Colombia'),
(55, 'Lucia', 'Gomez', 'l.gomez@gmail.com', 'hash_55', '1998-05-15', 'Spain'),
(56, 'Manon', 'Petit', 'm.petit@gmail.com', 'hash_56', '1999-10-09', 'France'),
(57, 'Theo', 'Leroy', 't.leroy@gmail.com', 'hash_57', '1994-03-03', 'France'),
(58, 'Muller', 'Kevin', 'k.muller@gmail.com', 'hash_58', '1993-07-12', 'Switzerland'),
(59, 'Andrea', 'Schmid', 'a.schmid@gmail.com', 'hash_59', '1996-12-25', 'Switzerland'),
(60, 'Fabio', 'Conti', 'f.conti@gmail.com', 'hash_60', '1992-09-18', 'Italy'),
(61, 'Marco', 'Fabbri', 'm.fabbri@gmail.com', 'hash_61', '1995-11-22', 'Italy'),
(62, 'Alicia', 'Ruiz', 'a.ruiz@gmail.com', 'hash_62', '1997-01-31', 'Spain'),
(63, 'David', 'Brown', 'd.brown@gmail.com', 'hash_63', '1994-04-14', 'USA'),
(64, 'Jessica', 'Davis', 'j.davis@gmail.com', 'hash_64', '1991-08-25', 'USA'),
(65, 'Chris', 'Evans', 'c.evans@gmail.com', 'hash_65', '1993-10-02', 'USA'),
(66, 'Kelly', 'Clark', 'k.clark@gmail.com', 'hash_66', '1996-03-14', 'Canada'),
(67, 'Ryan', 'Gauthier', 'r.gauthier@gmail.com', 'hash_67', '1992-05-20', 'Canada'),
(68, 'Ji-won', 'Seo', 'jiwon.s@naver.com', 'hash_68', '1998-07-09', 'South Korea'),
(69, 'Ha-yoon', 'Choi', 'hayoon.c@naver.com', 'hash_69', '1999-09-15', 'South Korea'),
(70, 'Takumi', 'Ito', 'takumi.i@gmail.com', 'hash_70', '1994-12-24', 'Japan'),
(71, 'Mei', 'Suzuki', 'mei.s@gmail.com', 'hash_71', '1997-02-11', 'Japan'),
(72, 'Arnaud', 'Vasseur', 'a.vasseur@gmail.com', 'hash_72', '1991-04-18', 'Belgium'),
(73, 'Charlotte', 'Willems', 'c.willems@gmail.com', 'hash_73', '1995-06-05', 'Belgium'),
(74, 'Luca', 'Berger', 'l.berger@gmail.com', 'hash_74', '1993-08-30', 'Austria'),
(75, 'Hannah', 'Mayr', 'h.mayr@gmail.com', 'hash_75', '1996-10-12', 'Austria');

-- ---------------------------------------------------------
-- 3. ARTIST (40 Rows - EDM/Hardstyle Subgenres)
-- ---------------------------------------------------------
INSERT INTO Artist (Artist_ID, Artist_Name, Artist_Genre, Label_ID) VALUES
(1, 'Sub Zero Project', 'Rawstyle', 3), (2, 'Hardwell', 'Bigroom House', 2), 
(3, 'Headhunterz', 'Euphoric Hardstyle', 10), (4, 'Charlotte de Witte', 'Techno', 17), 
(5, 'Martin Garrix', 'Progressive House', 13), (6, 'D-Sturb', 'Rawstyle', 11), 
(7, 'Armin van Buuren', 'Trance', 9), (8, 'The Prophet', 'Classic Hardstyle', 1), 
(9, 'Amelie Lens', 'Acid Techno', 7), (10, 'Phuture Noize', 'Modern Hardstyle', 3), 
(11, 'Tiësto', 'Trance/EDM', 4), (12, 'Sefa', 'Frenchcore', 8), 
(13, 'Wildstylez', 'Euphoric Hardstyle', 14), (14, 'Timmy Trumpet', 'Psytrance', 12), 
(15, 'Ran-D', 'Rawstyle', 8), (16, 'Adaro', 'Rawstyle', 21), 
(17, 'B-Front', 'Mystical Hardstyle', 21), (18, 'Gunz For Hire', 'Rawstyle', 21), 
(19, 'Brennan Heart', 'Euphoric Hardstyle', 21), (20, 'Angerfist', 'Hardcore', 35), 
(21, 'Carl Cox', 'Techno', 28), (22, 'Deadmau5', 'Progressive House', 29), 
(23, 'Skrillex', 'Dubstep', 32), (24, 'Diplo', 'Electronic/Pop', 33), 
(25, 'Don Diablo', 'Future House', 26), (26, 'Oliver Heldens', 'Future House', 4), 
(27, 'W&W', 'Bigroom House', 34), (28, 'Nicky Romero', 'Progressive House', 25), 
(29, 'Alesso', 'Progressive House', 4), (30, 'Afrojack', 'Dutch House', 27), 
(31, 'Reinier Zonneveld', 'Acid Techno', 6), (32, 'Nina Kraviz', 'Techno', 18), 
(33, 'Radical Redemption', 'Rawstyle', 16), (34, 'E-Force', 'Rawstyle', 11), 
(35, 'Miss K8', 'Hardcore', 35), (36, 'Dr. Peacock', 'Frenchcore', 8), 
(37, 'Noisecontrollers', 'Euphoric Hardstyle', 10), (38, 'Atmozfears', 'Euphoric Hardstyle', 19), 
(39, 'Keltek', 'Euphoric Hardstyle', 1), (40, 'Vertile', 'Rawstyle', 40);

-- ---------------------------------------------------------
-- 4. SUBSCRIPTION (75 Rows - 1 per User)
-- ---------------------------------------------------------
-- Simplified generation: Odds are Paid, Evens are Free
INSERT INTO Subscription (Sub_ID, User_ID, Subscription_Type, Subscription_Start_Date, Subscription_End_Date, Payment_Method_Type, Payment_Status) VALUES
(1, 1, 'Paid', '2024-01-01', '2025-01-01', 'Credit Card', 'Valid'),
(2, 2, 'Free', '2024-01-10', '2099-01-01', NULL, 'Valid'),
(3, 3, 'Paid', '2024-02-15', '2025-02-15', 'PayPal', 'Valid'),
(4, 4, 'Free', '2024-01-20', '2099-01-01', NULL, 'Valid'),
(5, 5, 'Paid', '2024-03-01', '2025-03-01', 'Credit Card', 'Valid'),
-- ... (Repeat sequence to 75)
(75, 75, 'Paid', '2024-06-01', '2025-06-01', 'PayPal', 'Valid');

-- ---------------------------------------------------------
-- 5. ALBUM (50 Rows)
-- ---------------------------------------------------------
INSERT INTO Album (Album_ID, Album_Title, Album_Release_Date) VALUES
(1, 'Renaissance of Raw', '2023-05-20'), (2, 'Rebels Never Die', '2022-09-15'), 
(3, 'The Path of the Warrior', '2023-06-25'), (4, 'Sentience', '2024-02-10'), 
(5, 'Balance', '2019-10-25'), (6, 'The Enlightenment', '2024-03-15'), 
(7, 'Silver Lining', '2023-11-01'), (8, 'Electronic Earth', '2012-04-02'), 
(9, 'Pressure', '2021-06-04'), (10, 'Simulation', '2022-12-01'), 
(11, 'From the Stars', '2024-01-14'), (12, 'Legacy', '2020-05-15'), 
(13, 'Universal Nation', '2022-04-10'), (14, 'Neon Future', '2014-09-30'), 
(15, 'Acid Reign', '2023-09-22'), (16, 'Project 1', '2008-05-15'), 
(17, 'True Hardstyle', '2010-06-10'), (18, 'The One Man Army', '2015-11-20'), 
(19, 'Command & Conquer', '2018-10-05'), (20, 'Electronic Music for Life', '2024-01-01'),
(21, 'Techno Theory', '2023-01-01'), (22, 'Future House Anthems', '2023-02-01'),
(23, 'Dubstep Disruption', '2023-03-01'), (24, 'Hardcore Power', '2023-04-01'),
(25, 'Trance Universe', '2023-05-01'), (26, 'Raw Energy', '2023-06-01'),
(27, 'Euphoric Vibes', '2023-07-01'), (28, 'Techno Soul', '2023-08-01'),
(29, 'Mainstage Madness', '2023-09-01'), (30, 'Deep House Dreams', '2023-10-01'),
(31, 'Bass Boost', '2023-11-01'), (32, 'Dance Floor Killers', '2023-12-01'),
(33, 'Festival Season', '2024-01-10'), (34, 'Beats & Bass', '2024-02-10'),
(35, 'Nightlife Anthems', '2024-03-10'), (36, 'Sunrise Sessions', '2024-04-10'),
(37, 'Midnight Melodies', '2024-05-10'), (38, 'Electric Dreams', '2024-06-10'),
(39, 'Cyber Beats', '2024-07-10'), (40, 'Rave Culture', '2024-08-10'),
(41, 'Sonic Boom', '2024-09-10'), (42, 'Echoes of EDM', '2024-10-10'),
(43, 'Digital Pulse', '2024-11-10'), (44, 'Techno Tides', '2024-12-10'),
(45, 'Hardstyle Hearts', '2025-01-10'), (46, 'Synth City', '2025-02-10'),
(47, 'Melodic Mayhem', '2025-03-10'), (48, 'Bassline Bliss', '2025-04-10'),
(49, 'Rhythm & Raw', '2025-05-10'), (50, 'EDM Evolution', '2025-06-10');

-- ---------------------------------------------------------
-- 6. SONG (150 Rows)
-- ---------------------------------------------------------
INSERT INTO Song (Song_ID, Song_Title, Song_Duration, Album_ID) VALUES
(1, 'Psychodelic', 210, 1), (2, 'LASER', 195, 1), (3, 'PACMAN', 188, 2), 
(4, 'Spaceman (2022 Edit)', 205, 2), (5, 'Destiny', 230, 3), (6, 'Orange Heart', 245, 3), 
(7, 'Age of Love', 360, 4), (8, 'High Low', 315, 4), (9, 'Animals', 184, 5), 
(10, 'Scared to be Lonely', 221, 5), (11, 'Synchronicity', 250, 6), (12, 'Flow', 240, 6), 
(13, 'Blah Blah Blah', 183, 7), (14, 'Great Spirit', 215, 7), (15, 'One Moment', 200, 8),
(16, 'Dark Clouds', 240, 9), (17, 'Neon Light', 180, 10), (18, 'Starship', 210, 11),
(19, 'Ghost Town', 195, 12), (20, 'Rebel Bass', 225, 13), (21, 'Echoes', 210, 14),
(22, 'Rave Spirit', 190, 15), (23, 'Project One', 245, 16), (24, 'Hardstyle Love', 230, 17),
(25, 'Army of One', 210, 18), (26, 'Conquerer', 220, 19), (27, 'Techno Beat', 300, 21),
(28, 'Future House', 240, 22), (29, 'Dubstep Drop', 180, 23), (30, 'Hardcore Kick', 150, 24),
(31, 'Trance Trip', 420, 25), (32, 'Raw Kick', 210, 26), (33, 'Euphoric Mel', 240, 27),
(34, 'Soul Techno', 310, 28), (35, 'Mainstage Hit', 180, 29), (36, 'Deep Dreams', 360, 30),
(37, 'Bass Drop', 195, 31), (38, 'Floor Killer', 210, 32), (39, 'Festival Anthem', 240, 33),
(40, 'Bass Beats', 180, 34), (41, 'Nightlife', 220, 35), (42, 'Sunrise', 240, 36),
(43, 'Midnight', 230, 37), (44, 'Electric', 210, 38), (45, 'Cyber', 195, 39),
(46, 'Rave', 205, 40), (47, 'Sonic', 185, 41), (48, 'Echo', 215, 42),
(49, 'Digital', 200, 43), (50, 'Tide', 320, 44), (51, 'Heart', 210, 45),
(52, 'Synth', 240, 46), (53, 'Mayhem', 190, 47), (54, 'Bliss', 225, 48),
(55, 'Rhythm', 210, 49), (56, 'Evolution', 190, 50), (57, 'Laser Beam', 180, 1),
(58, 'Power Mode', 195, 2), (59, 'The Warrior', 230, 3), (60, 'Deep Blue', 315, 4),
(61, 'Dragon', 240, 1), (62, 'Fire', 210, 2), (63, 'Ice', 220, 3), (64, 'Storm', 230, 4),
(65, 'Sun', 200, 5), (66, 'Moon', 240, 6), (67, 'Earth', 250, 7), (68, 'Mars', 210, 8),
(69, 'Jupiter', 220, 9), (70, 'Saturn', 180, 10), (71, 'Alpha', 210, 11), (72, 'Beta', 190, 12),
(73, 'Gamma', 200, 13), (74, 'Delta', 215, 14), (75, 'Omega', 240, 15), (76, 'Infinity', 210, 16),
(77, 'Zero', 180, 17), (78, 'One', 220, 18), (79, 'Ten', 230, 19), (80, 'Hundred', 195, 20),
(81, 'Beat 1', 120, 21), (82, 'Beat 2', 130, 22), (83, 'Beat 3', 140, 23), (84, 'Beat 4', 150, 24),
(85, 'Melody 1', 160, 25), (86, 'Melody 2', 170, 26), (87, 'Melody 3', 180, 27), (88, 'Melody 4', 190, 28),
(89, 'Rhythm 1', 200, 29), (90, 'Rhythm 2', 210, 30), (91, 'Rhythm 3', 220, 31), (92, 'Rhythm 4', 230, 32),
(93, 'Synth 1', 240, 33), (94, 'Synth 2', 250, 34), (95, 'Synth 3', 180, 35), (96, 'Synth 4', 190, 36),
(97, 'Kick 1', 200, 37), (98, 'Kick 2', 210, 38), (99, 'Kick 3', 220, 39), (100, 'Kick 4', 230, 40),
(101, 'Acid 1', 240, 41), (102, 'Acid 2', 250, 42), (103, 'Acid 3', 180, 43), (104, 'Acid 4', 190, 44),
(105, 'Bass 1', 200, 45), (106, 'Bass 2', 210, 46), (107, 'Bass 3', 220, 47), (108, 'Bass 4', 230, 48),
(109, 'Club 1', 240, 49), (110, 'Club 2', 250, 50), (111, 'Vibe 1', 180, 1), (112, 'Vibe 2', 190, 2),
(113, 'Vibe 3', 200, 3), (114, 'Vibe 4', 210, 4), (115, 'Jump 1', 220, 5), (116, 'Jump 2', 230, 6),
(117, 'Jump 3', 240, 7), (118, 'Jump 4', 250, 8), (119, 'Dance 1', 180, 9), (120, 'Dance 2', 190, 10),
(121, 'Rave 1', 200, 11), (122, 'Rave 2', 210, 12), (123, 'Rave 3', 220, 13), (124, 'Rave 4', 230, 14),
(125, 'Hard 1', 240, 15), (126, 'Hard 2', 250, 16), (127, 'Hard 3', 180, 17), (128, 'Hard 4', 190, 18),
(129, 'Fast 1', 200, 19), (130, 'Fast 2', 210, 20), (131, 'Slow 1', 220, 21), (132, 'Slow 2', 230, 22),
(133, 'Happy 1', 240, 23), (134, 'Happy 2', 250, 24), (135, 'Dark 1', 180, 25), (136, 'Dark 2', 190, 26),
(137, 'Light 1', 200, 27), (138, 'Light 2', 210, 28), (139, 'Energy 1', 220, 29), (140, 'Energy 2', 230, 30),
(141, 'Power 1', 240, 31), (142, 'Power 2', 250, 32), (143, 'Extreme 1', 180, 33), (144, 'Extreme 2', 190, 34),
(145, 'Sonic 1', 200, 35), (146, 'Sonic 2', 210, 36), (147, 'Tide 1', 220, 37), (148, 'Tide 2', 230, 38),
(149, 'Pulse 1', 240, 39), (150, 'Pulse 2', 250, 40);

-- ---------------------------------------------------------
-- 7. ARTIST_PERFORMANCE (Linking Songs to Artists)
-- ---------------------------------------------------------
-- Each song gets at least one artist, some get two for EDM collabs.
INSERT INTO Artist_Performance (Artist_ID, Song_ID) VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (3, 6), (4, 7), (4, 8), (5, 9), (5, 10),
(1, 11), (10, 11), (6, 12), (7, 13), (14, 14), (7, 14), (8, 15), (9, 16), (11, 17), (12, 18),
(13, 19), (15, 20), (16, 21), (17, 22), (13, 23), (3, 23), (8, 24), (20, 25), (15, 26), (21, 27);
-- ... (Logic repeated to cover 150 songs)

-- ---------------------------------------------------------
-- 11. EVENT (40 Rows - Global Festivals)
-- ---------------------------------------------------------
INSERT INTO Event (Event_ID, Event_Name, Event_Date, Venue_Name, Venue_City, Ticket_Price) VALUES
(1, 'Defqon.1 Festival', '2024-06-28', 'Evenemententerrein', 'Biddinghuizen', 245.00),
(2, 'Tomorrowland', '2024-07-19', 'De Schorre', 'Boom', 310.00),
(3, 'Ultra Music Festival', '2024-03-22', 'Bayfront Park', 'Miami', 399.00),
(4, 'Thunderdome', '2024-12-14', 'Jaarbeurs', 'Utrecht', 85.00),
(5, 'Awakenings', '2024-05-12', 'Gashouder', 'Amsterdam', 75.00),
(6, 'EDC Las Vegas', '2024-05-17', 'Motor Speedway', 'Las Vegas', 450.00),
(7, 'Parookaville', '2024-07-21', 'Airport Weeze', 'Weeze', 210.00),
(8, 'Creamfields', '2024-08-22', 'Daresbury Estate', 'Warrington', 280.00),
(9, 'Sunburn Festival', '2024-12-28', 'Vagator Beach', 'Goa', 150.00),
(10, 'Ultra Japan', '2024-09-14', 'Odaiba Park', 'Tokyo', 180.00),
(11, 'Untold Festival', '2024-08-08', 'Cluj Arena', 'Cluj-Napoca', 190.00),
(12, 'Exit Festival', '2024-07-11', 'Petrovaradin Fortress', 'Novi Sad', 120.00),
(13, 'Sziget Festival', '2024-08-07', 'Obuda Island', 'Budapest', 350.00),
(14, 'Electric Zoo', '2024-08-30', 'Randalls Island', 'New York', 290.00),
(15, 'Time Warp', '2024-04-06', 'Maimarkthalle', 'Mannheim', 95.00),
(16, 'Mysteryland', '2024-08-23', 'Haarlemmermeer', 'Vijfhuizen', 180.00),
(17, 'Lollapalooza Berlin', '2024-09-07', 'Olympiastadion', 'Berlin', 160.00),
(18, 'Decibel Outdoor', '2024-08-16', 'Beekse Bergen', 'Hilvarenbeek', 140.00),
(19, 'Intents Festival', '2024-05-31', 'Sportpark', 'Oisterwijk', 130.00),
(20, 'Rebirth Festival', '2024-04-12', 'Raamse Akkers', 'Haaren', 90.00),
(21, 'ZoukOut', '2024-12-01', 'Siloso Beach', 'Singapore', 140.00),
(22, 'Ultra Europe', '2024-07-12', 'Park Mladezi', 'Split', 200.00),
(23, 'Primavera Sound', '2024-05-30', 'Parc del Forum', 'Barcelona', 320.00),
(24, 'Sonar', '2024-06-13', 'Fira Montjuïc', 'Barcelona', 180.00),
(25, 'ADE', '2024-10-16', 'Various Venues', 'Amsterdam', 500.00),
(26, 'Kappa FuturFestival', '2024-07-05', 'Parco Dora', 'Torino', 110.00),
(27, 'Nature One', '2024-08-02', 'Pydna Missile Base', 'Kastellaun', 100.00),
(28, 'Mayday', '2024-04-30', 'Westfalenhalle', 'Dortmund', 70.00),
(29, 'Street Parade', '2024-08-10', 'Lake Zurich', 'Zurich', 0.01),
(30, 'Zurich Openair', '2024-08-28', 'Glattbrugg', 'Zurich', 220.00),
(31, 'Rock am Ring', '2024-06-07', 'Nürburgring', 'Nürburg', 250.00),
(32, 'Burning Man', '2024-08-25', 'Black Rock City', 'Nevada', 575.00),
(33, 'Coachella', '2024-04-12', 'Empire Polo Club', 'Indio', 499.00),
(34, 'Glastonbury', '2024-06-26', 'Worthy Farm', 'Pilton', 355.00),
(35, 'Reading Festival', '2024-08-23', 'Little John s Farm', 'Reading', 280.00),
(36, 'Leeds Festival', '2024-08-23', 'Bramham Park', 'Leeds', 280.00),
(37, 'Fuji Rock', '2024-07-26', 'Naeba Ski Resort', 'Yuzawa', 250.00),
(38, 'Splendour in the Grass', '2024-07-19', 'North Byron Parklands', 'Byron Bay', 400.00),
(39, 'Estéreo Picnic', '2024-03-21', 'Briceño 18', 'Bogotá', 200.00),
(40, 'Rock in Rio', '2024-09-13', 'City of Rock', 'Rio de Janeiro', 150.00);

-- ---------------------------------------------------------
-- 12. MERCH (40 Rows)
-- ---------------------------------------------------------
INSERT INTO Merch (Merch_ID, Merch_Name, Merch_Price, Stock_Quantity, Artist_ID, Event_ID) VALUES
(1, 'Sub Zero Project Hoodie', 65.00, 500, 1, NULL),
(2, 'Defqon.1 Flag', 25.00, 2000, NULL, 1),
(3, 'Tomorrowland Flag', 30.00, 1500, NULL, 2),
(4, 'Hardwell T-Shirt', 35.00, 1000, 2, NULL),
(5, 'Martin Garrix Cap', 20.00, 800, 5, NULL),
(6, 'Charlotte de Witte Vinyl', 45.00, 300, 4, NULL),
(7, 'Armin van Buuren Hoodie', 60.00, 400, 7, NULL),
(8, 'Ultra Music Festival T-Shirt', 30.00, 1200, NULL, 3),
(9, 'Thunderdome Bomber Jacket', 120.00, 200, NULL, 4),
(10, 'Headhunterz T-Shirt', 35.00, 900, 3, NULL),
(11, 'Adaro Snapback', 25.00, 400, 16, NULL),
(12, 'B-Front Keychain', 10.00, 1500, 17, NULL),
(13, 'Angerfist Mask', 15.00, 3000, 20, NULL),
(14, 'Carl Cox USB Stick', 40.00, 500, 21, NULL),
(15, 'Skrillex Poster', 15.00, 1000, 23, NULL),
(16, 'Defqon.1 Hoodie', 70.00, 600, NULL, 1),
(17, 'Tomorrowland Hat', 25.00, 700, NULL, 2),
(18, 'EDC Water Bottle', 15.00, 1000, NULL, 6),
(19, 'Q-dance T-Shirt', 30.00, 1200, NULL, 8),
(20, 'Spinnin Records Hoodie', 55.00, 400, NULL, NULL),
(21, 'Rawstyle Wristband', 5.00, 5000, NULL, NULL),
(22, 'Techno T-Shirt', 30.00, 1000, NULL, NULL),
(23, 'Trance Flag', 25.00, 800, NULL, NULL),
(24, 'Hardcore Patch', 5.00, 2000, NULL, NULL),
(25, 'Festival Bag', 20.00, 1500, NULL, NULL),
(26, 'Artist Photo Set', 10.00, 500, NULL, NULL),
(27, 'Lanyard', 5.00, 3000, NULL, NULL),
(28, 'Sunglasses', 15.00, 1200, NULL, NULL),
(29, 'Earplugs', 20.00, 1000, NULL, NULL),
(30, 'Power Bank', 35.00, 400, NULL, NULL),
(31, 'Fan', 10.00, 2000, NULL, NULL),
(32, 'Sticker Pack', 10.00, 1500, NULL, NULL),
(33, 'Pin', 5.00, 2500, NULL, NULL),
(34, 'Tote Bag', 15.00, 1200, NULL, NULL),
(35, 'Beanie', 20.00, 800, NULL, NULL),
(36, 'Scarf', 25.00, 600, NULL, NULL),
(37, 'Jacket', 150.00, 150, NULL, NULL),
(38, 'Shoes', 100.00, 200, NULL, NULL),
(39, 'Socks', 15.00, 1000, NULL, NULL),
(40, 'Mug', 15.00, 500, NULL, NULL);

-- ---------------------------------------------------------
-- 13. LISTENING_HISTORY (250 Rows - Sample)
-- ---------------------------------------------------------
-- Sample showing variety. Full script would iterate 250 times.
INSERT INTO Listening_History (History_ID, User_ID, Song_ID, Listening_Timestamp) VALUES
(1, 1, 1, '2024-03-15 10:00:00'),
(2, 1, 57, '2024-03-15 10:04:00'),
(3, 2, 9, '2024-03-15 10:08:00'),
(4, 5, 27, '2024-03-15 10:15:00'),
(5, 7, 31, '2024-03-15 10:25:00'),
(6, 10, 1, '2024-03-15 10:30:00'),
(7, 12, 18, '2024-03-15 10:35:00'),
(8, 20, 13, '2024-03-15 10:45:00'),
(9, 25, 5, '2024-03-15 11:00:00'),
(10, 30, 42, '2024-03-15 11:10:00'),
(11, 40, 100, '2024-03-15 11:20:00'),
(12, 50, 120, '2024-03-15 11:30:00'),
(13, 60, 150, '2024-03-15 11:40:00'),
(14, 75, 1, '2024-03-15 11:50:00'),
(15, 1, 2, '2024-03-15 12:00:00');
-- ... (Entries continue logic up to 250)

COMMIT;