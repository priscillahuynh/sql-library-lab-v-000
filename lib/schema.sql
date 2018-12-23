CREATE TABLE Series (
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id INTEGER,
  sub_genre TEXT
);

CREATE TABLE Sub_genre (
  id INTEGER PRIMARY KEY,
  name TEXT,
);

CREATE TABLE Authors (
  id INTEGER PRIMARY KEY,
  name TEXT,
);

CREATE TABLE Books (
  id INTEGER PRIMARY KEY,
  title TEXT,
  year INTEGER,
  series_id INTEGER
);

CREATE TABLE Characters (
  id INTEGER PRIMARY KEY,
  name TEXT,
  motto TEXT,
  species TEXT,
  author_id INTEGER,
  series_id INTEGER
);
