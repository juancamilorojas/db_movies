-- Create the following tables:
-- "genre" table with a primary key and a name column:
CREATE TABLE genre (
    id SERIAL PRIMARY KEY, 
    genre_name VARCHAR(50)
);
-- "movie" table with a primary key, a title column, a release_year column of type INT, and a foreign key referencing the "genre" table:
CREATE TABLE movie (
    id SERIAL PRIMARY KEY, 
    title VARCHAR(50), 
    release_year INT, 
    genre_id INT REFERENCES genre(id)
);
-- "actor" table with a primary key, a name column, and a numeric column representing the actor's age:
CREATE TABLE actor (
    id SERIAL PRIMARY KEY,
    actor_name VARCHAR(50), 
    age NUMERIC
);
-- "director" table with a primary key, a name column, and a text column representing the director's bio:
CREATE TABLE director (
    id SERIAL PRIMARY KEY,
    director_name VARCHAR(50),
    bio TEXT
);
-- "rating" table with a primary key, a numeric column representing the rating, and a boolean column indicating whether it's an adult movie or not:
CREATE TABLE rating (
    id SERIAL PRIMARY KEY,
    rating NUMERIC, 
    adult BOOLEAN
);