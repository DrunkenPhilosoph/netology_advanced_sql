-- Таблицы созданы с поправкой на предыдущее задание

-- Создание таблицы Genres
CREATE TABLE Genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(255) NOT NULL
);

-- Создание таблицы Artists
CREATE TABLE Artists (
    artist_id SERIAL PRIMARY KEY,
    artist_name VARCHAR(255) NOT NULL
);

-- Создание таблицы Albums
CREATE TABLE Albums (
    album_id SERIAL PRIMARY KEY,
    album_name VARCHAR(255) NOT NULL,
    release_year INT NOT NULL
);

-- Создание таблицы Tracks
CREATE TABLE Tracks (
    track_id SERIAL PRIMARY KEY,
    track_name VARCHAR(255) NOT NULL,
    duration INT NOT NULL,
    album_id INT REFERENCES Albums(album_id)
);

-- Создание таблицы Compilations
CREATE TABLE Compilations (
    compilation_id SERIAL PRIMARY KEY,
    compilation_name VARCHAR(255) NOT NULL,
    release_year INT NOT NULL
);

-- Создание таблицы Compilations_Tracks (связь между сборниками и треками)
CREATE TABLE Compilations_Tracks (
    compilation_id INT REFERENCES Compilations(compilation_id),
    track_id INT REFERENCES Tracks(track_id),
    PRIMARY KEY (compilation_id, track_id)
);

-- Создание таблицы Artists_Genres (связь между исполнителями и жанрами)
CREATE TABLE Artists_Genres (
    artist_id INT REFERENCES Artists(artist_id),
    genre_id INT REFERENCES Genres(genre_id),
    PRIMARY KEY (artist_id, genre_id)
);

-- Создание таблицы Artists_Albums (связь между исполнителями и альбомами)
CREATE TABLE Artists_Albums (
    artist_id INT REFERENCES Artists(artist_id),
    album_id INT REFERENCES Albums(album_id),
    PRIMARY KEY (artist_id, album_id)
);

-- Создание таблицы Albums_Tracks (связь между альбомами и треками)
CREATE TABLE Albums_Tracks (
    album_id INT REFERENCES Albums(album_id),
    track_id INT REFERENCES Tracks(track_id),
    PRIMARY KEY (album_id, track_id)
);