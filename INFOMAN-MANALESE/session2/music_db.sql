SHOW DATABASES;
CREATE DATABASE music_database;

USE music_database;


CREATE TABLE artists (
    artist_id INT,
    artist_name VARCHAR(255) NOT NULL,
    birth_date DATE,
    age INT,
    email VARCHAR(100),
    PRIMARY KEY (artist_id)
);


CREATE TABLE songs (
    song_id INT,
    song_title VARCHAR(255) NOT NULL,
    release_date DATE,
    genre VARCHAR(100),
    album_id INT,
    PRIMARY KEY (song_id),
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

CREATE TABLE albums (
    album_id INT,
    album_title VARCHAR(255),
    release_date DATE,
    genre VARCHAR(100),
    artist_id INT,
    PRIMARY KEY (album_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

show tables;

desc artists;
desc songs;
desc albums;