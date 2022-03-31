CREATE DATABASE catalog_of_my_things;

CREATE TABLE genres (
	id  INT GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(100),
	PRIMARY KEY(id)
);

CREATE TABLE item (
	id  INT GENERATED ALWAYS AS IDENTITY,
  publish_date DATE,
	genre_id INT,
	author_id INT,
	label_id INT,
	archived BOOLEAN,
	PRIMARY KEY(id),
	FOREIGN KEY (genre_id) REFERENCES genres (id),
	FOREIGN KEY (author_id) REFERENCES author (id),
	FOREIGN KEY (label_id) REFERENCES labels (id)
);

CREATE TABLE music_albums (
	id  INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(100),
	on_spotify BOOLEAN,
	FOREIGN KEY(id) REFERENCES item(id)
);
