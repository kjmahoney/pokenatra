DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;

CREATE TABLE pokemons (
  id SERIAL PRIMARY KEY,
  name TEXT,
  cp INTEGER,
  poke_type TEXT,
  img_url TEXT,
  trainer_id INT
);


CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name TEXT,
  level INTEGER,
  img_url TEXT
);
