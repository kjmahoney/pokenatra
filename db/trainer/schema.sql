DROP TABLE IF EXISTS trainers;

CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name TEXT,
  level INTEGER,
  img_url TEXT
)
