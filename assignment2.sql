--rangers table
CREATE TABLE rangers (
    ranger_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL
);

--Species Table
CREATE TABLE species (
    species_id INT PRIMARY KEY NOT NULL,
    common_name VARCHAR(50) NOT NULL,
    scientific_name VARCHAR(100) NOT NULL,
    discovery_date TIMESTAMP NOT NULL,
    conservation_status VARCHAR(50) NOT NULL
);

--Sightings Table
CREATE TABLE sightings (
    sighting_id INT PRIMARY KEY NOT NULL,
    ranger_id INT NOT NULL,
    species_id INT NOT NULL,
    sighting_time TIMESTAMP NOT NULL,
    location VARCHAR(100) NOT NULL,
    notes TEXT,
    FOREIGN KEY (ranger_id) REFERENCES rangers (ranger_id),
    FOREIGN KEY (species_id) REFERENCES species (species_id)
);

SELECT * FROM rangers;

SELECT * FROM species;

SELECT * FROM sightings;