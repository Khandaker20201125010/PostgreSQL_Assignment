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
('Green Turtle', 'Chelonia mydas', '2025-05-24', 'Endangered'),
('Asiatic Elephant ', 'Elephas maximus indicus ', ' 1758-01-01  ', 'Endangered'),
('Snow Leopard', 'Panthera uncia', ' 1775-01-01  ', 'Vulnerable'),
('Bengal Tiger ', 'Panthera tigris ', ' 1758-01-01  ', 'Endangered')


SELECT * FROM species

DROP TABLE species

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
(3, 3, 3, '2025-05-24 12:00:00', 'Coral Reef', NULL),
(4, 1, 2, ' 2024-05-18 18:30:00', 'Snowfall Pass', NULL)



SELECT * FROM sightings

DROP TABLE sightings



--Problem 1: Register a new ranger with provided data with name = 'Derek Fox' and region = 'Coastal Plains'
INSERT INTO rangers ("name", region) VALUES 
('Derek Fox', 'Coastal Plains')

SELECT * FROM rangers WHERE "name" = 'Derek Fox'

--Problem 2:Count unique species ever sighted.
SELECT COUNT(*) AS  unique_species_count FROM species

--Problem 3: Find all sightings where the location includes "Pass".
SELECT * FROM sightings WHERE location LIKE '%Pass%'

--Problem 4: List each ranger's name and their total number of sightings.
SELECT rangers.name, COUNT(sightings.sighting_id) AS total_sightings
FROM rangers
LEFT JOIN sightings ON rangers.ranger_id = sightings.ranger_id
GROUP BY rangers.name;

--Problem 5: List species that have never been sighted.
SELECT species.common_name
FROM species
WHERE species_id NOT IN (SELECT DISTINCT species_id FROM sightings);

--Problem 6: Show the most recent 2 sightings.
SELECT * FROM sightings ORDER BY sighting_time DESC LIMIT 2;

--Problem 7: Update all species discovered before year 1800 to have status 'Historic'.
UPDATE species SET conservation_status = 'Historic' WHERE discovery_date < '1800-01-01';

SELECT * FROM species
