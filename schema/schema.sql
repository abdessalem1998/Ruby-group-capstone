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
