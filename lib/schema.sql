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