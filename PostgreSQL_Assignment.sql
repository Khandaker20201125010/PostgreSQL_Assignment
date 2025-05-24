-- Active: 1747555016962@@localhost@5000@conservation_db@public
SELECT * FROM rangers

CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    "name" VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL
 
)

INSERT INTO rangers ("name", region) VALUES ('Red Ranger', 'Region A')