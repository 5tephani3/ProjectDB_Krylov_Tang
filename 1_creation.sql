CREATE DATABASE IF NOT EXISTS MusicDB;
USE MusicDB;

CREATE TABLE subscription (
    subscription_id INT NOT NULL,
    subscription_type VARCHAR(50) NOT NULL,
    subscription_start_date DATE NOT NULL,
    subscription_end_date DATE,
    PRIMARY KEY (subscription_id)
);

CREATE TABLE user (
    user_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email_address VARCHAR(100) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    country VARCHAR(50) NOT NULL,
    subscription_id INT,
    PRIMARY KEY (user_id),
    FOREIGN KEY (subscription_id) REFERENCES subscription(subscription_id)
);

CREATE TABLE playlist (
    playlist_id INT NOT NULL,
    playlist_name VARCHAR(100) NOT NULL,
    playlist_creation_date DATE NOT NULL,
    user_id INT NOT NULL,
    PRIMARY KEY (playlist_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE album (
    album_id INT NOT NULL,
    album_title VARCHAR(100) NOT NULL,
    album_release_date DATE,
    PRIMARY KEY (album_id)
);

CREATE TABLE song (
    song_id INT NOT NULL,
    song_title VARCHAR(100) NOT NULL,
    song_duration INT NOT NULL,
    album_id INT,
    PRIMARY KEY (song_id),
    FOREIGN KEY (album_id) REFERENCES album(album_id)
);

CREATE TABLE record_label (
    record_label_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (record_label_name)
);

CREATE TABLE artist (
    artist_id INT NOT NULL,
    artist_name VARCHAR(100) NOT NULL,
    artist_genre VARCHAR(50),
    record_label_name VARCHAR(100),
    PRIMARY KEY (artist_id),
    FOREIGN KEY (record_label_name) REFERENCES record_label(record_label_name)
);

CREATE TABLE podcast (
    podcast_id INT NOT NULL,
    podcast_title VARCHAR(100) NOT NULL,
    PRIMARY KEY (podcast_id)
);

CREATE TABLE venue (
    venue_name VARCHAR(100) NOT NULL,
    venue_city VARCHAR(100) NOT NULL,
    PRIMARY KEY (venue_name)
);

CREATE TABLE ticket (
    ticket_id INT NOT NULL,
    ticket_price DECIMAL(10,2) NOT NULL,
    ticket_status VARCHAR(50) NOT NULL,
    PRIMARY KEY (ticket_id)
);

CREATE TABLE merch (
    merch_id INT NOT NULL,
    merch_name VARCHAR(100) NOT NULL,
    merch_price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (merch_id)
);

CREATE TABLE stock (
    merch_id INT NOT NULL,
    stock_quantity INT NOT NULL,
    PRIMARY KEY (merch_id),
    FOREIGN KEY (merch_id) REFERENCES merch(merch_id)
);

CREATE TABLE event (
    event_id INT NOT NULL,
    event_name VARCHAR(100) NOT NULL,
    event_start_date DATE NOT NULL,
    event_end_date DATE,
    venue_name VARCHAR(100) NOT NULL,
    ticket_id INT,
    merch_id INT,
    PRIMARY KEY (event_id),
    FOREIGN KEY (venue_name) REFERENCES venue(venue_name),
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id),
    FOREIGN KEY (merch_id) REFERENCES merch(merch_id)
);

CREATE TABLE payment (
    payment_id INT NOT NULL,
    payment_method_type VARCHAR(50) NOT NULL,
    payment_status VARCHAR(50) NOT NULL,
    subscription_id INT,
    ticket_id INT,
    PRIMARY KEY (payment_id),
    FOREIGN KEY (subscription_id) REFERENCES subscription(subscription_id),
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)
);

CREATE TABLE listening_timestamp (
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    listening_timestamp_date DATETIME NOT NULL,
    PRIMARY KEY (user_id, song_id, listening_timestamp_date),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (song_id) REFERENCES song(song_id)
);

CREATE TABLE contains (
    playlist_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY (playlist_id, song_id),
    FOREIGN KEY (playlist_id) REFERENCES playlist(playlist_id),
    FOREIGN KEY (song_id) REFERENCES song(song_id)
);

CREATE TABLE performs (
    artist_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY (artist_id, song_id),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
    FOREIGN KEY (song_id) REFERENCES song(song_id)
);

CREATE TABLE releases (
    artist_id INT NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY (artist_id, album_id),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
    FOREIGN KEY (album_id) REFERENCES album(album_id)
);

CREATE TABLE purchases (
    user_id INT NOT NULL,
    merch_id INT NOT NULL,
    PRIMARY KEY (user_id, merch_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (merch_id) REFERENCES merch(merch_id)
);

CREATE TABLE follows (
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
);

CREATE TABLE collabs (
    artist_id INT NOT NULL,
    artist_id_1 INT NOT NULL,
    PRIMARY KEY (artist_id, artist_id_1),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
    FOREIGN KEY (artist_id_1) REFERENCES artist(artist_id)
);

CREATE TABLE hosted_event (
    artist_id INT NOT NULL,
    event_id INT NOT NULL,
    PRIMARY KEY (artist_id, event_id),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
    FOREIGN KEY (event_id) REFERENCES event(event_id)
);

CREATE TABLE hosted_podcast (
    artist_id INT NOT NULL,
    podcast_id INT NOT NULL,
    PRIMARY KEY (artist_id, podcast_id),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
    FOREIGN KEY (podcast_id) REFERENCES podcast(podcast_id)
);
