-- Active: 1747555016962@@localhost@5000@conservation_db@public


CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    "name" VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL
 
)

INSERT INTO rangers ("name", region) VALUES 
('Red Ranger', 'Region A'),
('Blue Ranger', 'Region B'),
('Green Ranger', 'Region C'),



DROP TABLE rangers

SELECT * FROM rangers

CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(50) NOT NULL,
    scientific_name VARCHAR(50) NOT NULL,
    discovery_date DATE NOT NULL,
    conservation_status VARCHAR(50)
)

INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status) VALUES 
('Red Panda', 'Ailurus fulgens', '2025-05-24', 'Endangered'),
('Blue Whale', 'Balaenoptera musculus', '2025-05-24', 'Vulnerable'),
('Green Turtle', 'Chelonia mydas', '2025-05-24', 'Endangered')


SELECT * FROM species

CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INT NOT NULL REFERENCES rangers(ranger_id),
    species_id INT NOT NULL REFERENCES species(species_id),
    sighting_time TIMESTAMP NOT NULL,
    location TEXT NOT NULL,
    note TEXT
)

INSERT INTO sightings (sighting_id, ranger_id, species_id, sighting_time, location, note) VALUES
(1, 1, 1, '2025-05-24 10:00:00', 'Panda Forest', 'A group of pandas were sighted in the forest'),
(2, 2, 2, '2025-05-24 11:00:00', 'Ocean Bay', 'A blue whale was observed near the bay'),
(3, 3, 3, '2025-05-24 12:00:00', 'Coral Reef', NULL);


DROP TABLE sightings

SELECT * FROM sightings


INSERT INTO rangers ("name", region) VALUES 
('Derek Fox', 'Coastal Plains')

SELECT * FROM rangers WHERE "name" = 'Derek Fox'
