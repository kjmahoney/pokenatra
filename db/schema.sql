DROP TABLE IF EXISTS pokemon;

CREATE TABLE pokemons (
  id SERIAL PRIMARY KEY,
  name TEXT,
  cp INTEGER,
  poke_type TEXT,
  img_url TEXT
);
