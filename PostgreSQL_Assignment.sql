--rangers table
CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL
);

--Insert data into rangers table
INSERT INTO
    rangers (ranger_id, name, region)
VALUES (
        1,
        'Emma Johnson',
        'Northern Hills'
    ),
    (
        2,
        'Liam Smith',
        'River Delta'
    ),
    (
        3,
        'Olivia Williams',
        'Mountain Range'
    ),
    (
        4,
        'Noah Brown',
        'Eastern Plains'
    ),
    (
        5,
        'Ava Jones',
        'Western Gorge'
    ),
    (
        6,
        'William Garcia',
        'Southern Marsh'
    ),
    (
        7,
        'Sophia Miller',
        'Central Valley'
    ),
    (
        8,
        'Benjamin Davis',
        'Northern Hills'
    ),
    (
        9,
        'Isabella Rodriguez',
        'River Delta'
    ),
    (
        10,
        'James Martinez',
        'Mountain Range'
    ),
    (
        11,
        'Mia Hernandez',
        'Eastern Plains'
    ),
    (
        12,
        'Elijah Lopez',
        'Western Gorge'
    ),
    (
        13,
        'Charlotte Gonzalez',
        'Southern Marsh'
    ),
    (
        14,
        'Alexander Wilson',
        'Central Valley'
    ),
    (
        15,
        'Amelia Anderson',
        'Northern Hills'
    ),
    (
        16,
        'Michael Thomas',
        'River Delta'
    ),
    (
        17,
        'Harper Taylor',
        'Mountain Range'
    ),
    (
        18,
        'Daniel Moore',
        'Eastern Plains'
    ),
    (
        19,
        'Evelyn Jackson',
        'Western Gorge'
    ),
    (
        20,
        'Matthew Martin',
        'Southern Marsh'
    ),
    (
        21,
        'Abigail Lee',
        'Central Valley'
    ),
    (
        22,
        'Henry Perez',
        'Northern Hills'
    ),
    (
        23,
        'Emily Thompson',
        'River Delta'
    ),
    (
        24,
        'Sebastian White',
        'Mountain Range'
    ),
    (
        25,
        'Elizabeth Harris',
        'Eastern Plains'
    ),
    (
        26,
        'Jackson Clark',
        'Western Gorge'
    ),
    (
        27,
        'Sofia Lewis',
        'Southern Marsh'
    ),
    (
        28,
        'David Robinson',
        'Central Valley'
    ),
    (
        29,
        'Victoria Walker',
        'Northern Hills'
    ),
    (
        30,
        'Joseph Young',
        'River Delta'
    );

--Species Table
CREATE TABLE species (
    species_id SERIAL PRIMARY KEY NOT NULL,
    common_name VARCHAR(50) NOT NULL,
    scientific_name VARCHAR(100) NOT NULL,
    discovery_date TIMESTAMP NOT NULL,
    conservation_status VARCHAR(50) NOT NULL
);

--Insert data into species table
INSERT INTO
    species (
        species_id,
        common_name,
        scientific_name,
        discovery_date,
        conservation_status
    )
VALUES (
        1,
        'Bengal Tiger',
        'Panthera tigris tigris',
        '1758-01-01',
        'Endangered'
    ),
    (
        2,
        'Saltwater Crocodile',
        'Crocodylus porosus',
        '1801-01-01',
        'Vulnerable'
    ),
    (
        3,
        'Indian Python',
        'Python molurus',
        '1758-01-01',
        'Vulnerable'
    ),
    (
        4,
        'Fishing Cat',
        'Prionailurus viverrinus',
        '1833-01-01',
        'Vulnerable'
    ),
    (
        5,
        'Spotted Deer',
        'Axis axis',
        '1772-01-01',
        'Vulnerable'
    ),
    (
        6,
        'Irrawaddy Dolphin',
        'Orcaella brevirostris',
        '1866-01-01',
        'Endangered'
    ),
    (
        7,
        'Lesser Adjutant',
        'Leptoptilos javanicus',
        '1821-01-01',
        'Vulnerable'
    ),
    (
        8,
        'Masked Finfoot',
        'Heliopais personatus',
        '1877-01-01',
        'Endangered'
    ),
    (
        9,
        'Northern River Terrapin',
        'Batagur baska',
        '1831-01-01',
        'Endangered'
    ),
    (
        10,
        'Horseshoe Crab',
        'Carcinoscorpius rotundicauda',
        '1802-01-01',
        'Endangered'
    ),
    (
        11,
        'Ganges River Shark',
        'Glyphis gangeticus',
        '1839-01-01',
        'ndangered'
    ),
    (
        12,
        'Smooth-coated Otter',
        'Lutrogale perspicillata',
        '1826-01-01',
        'Vulnerable'
    ),
    (
        13,
        'Ruddy Kingfisher',
        'Halcyon coromanda',
        '1830-01-01',
        'Endangered'
    ),
    (
        14,
        'Mangrove Whistler',
        'Pachycephala cinerea',
        '1831-01-01',
        'Vulnerable'
    ),
    (
        15,
        'Mangrove Pitta',
        'Pitta megarhyncha',
        '1854-01-01',
        'Endangered'
    );

--Sightings Table
CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY NOT NULL,
    ranger_id INT NOT NULL,
    species_id INT NOT NULL,
    sighting_time TIMESTAMP NOT NULL,
    location VARCHAR(100) NOT NULL,
    notes TEXT,
    FOREIGN KEY (ranger_id) REFERENCES rangers (ranger_id),
    FOREIGN KEY (species_id) REFERENCES species (species_id)
);

INSERT INTO
    sightings (
        sighting_id,
        ranger_id,
        species_id,
        sighting_time,
        location,
        notes
    )
VALUES (
        1,
        1,
        1,
        '2024-03-15 06:30:00',
        'Sundarbans West Zone',
        'Adult male tiger spotted near riverbank'
    ),
    (
        2,
        2,
        2,
        '2024-03-16 14:45:00',
        'Snowfall Pass',
        'Large crocodile basking on mudflat'
    ),
    (
        3,
        3,
        3,
        '2024-03-18 09:15:00',
        'Mangrove Cluster E',
        'Python crossing forest trail'
    ),
    (
        4,
        4,
        4,
        '2024-03-20 19:30:00',
        'Snowfall Pass',
        'Fishing cat hunting at dusk'
    ),
    (
        5,
        5,
        5,
        '2024-03-22 08:00:00',
        'Grasslands Area',
        'Herd of 12 spotted deer grazing'
    ),
    (
        6,
        6,
        6,
        '2024-03-24 11:20:00',
        'River Confluence',
        'Pod of 3 Irrawaddy dolphins'
    ),
    (
        7,
        7,
        7,
        '2024-03-25 07:45:00',
        'Nesting Zone B',
        'Lesser adjutant building nest'
    ),
    (
        8,
        8,
        1,
        '2024-03-27 17:10:00',
        'Sundarbans East Zone',
        'Tiger tracks found near watchtower'
    ),
    (
        9,
        9,
        8,
        '2024-03-29 06:50:00',
        'Snowfall Pass',
        'Rare masked finfoot sighting'
    ),
    (
        10,
        10,
        9,
        '2024-04-01 13:15:00',
        'Riverbank South',
        'Terrapin nesting site discovered'
    ),
    (
        11,
        11,
        10,
        '2024-04-03 10:30:00',
        'Mudflat Zone',
        'Group of horseshoe crabs mating'
    ),
    (
        12,
        12,
        11,
        '2024-04-05 16:40:00',
        'Deep Channel',
        'Possible Ganges shark sighting'
    ),
    (
        13,
        13,
        12,
        '2024-04-07 09:00:00',
        'Snowfall Pass',
        'Otter family playing'
    ),
    (
        14,
        14,
        1,
        '2024-04-09 05:20:00',
        'Sundarbans Core Area',
        'Tiger kill site discovered'
    ),
    (
        15,
        15,
        2,
        '2024-04-11 15:30:00',
        'Estuary Point',
        'Crocodile with tracking tag'
    ),
    (
        16,
        16,
        3,
        '2024-04-13 08:45:00',
        'Mangrove Cluster W',
        'Python shedding skin'
    ),
    (
        17,
        17,
        4,
        '2024-04-15 18:20:00',
        'Night Patrol Zone',
        'Fishing cat with kittens'
    ),
    (
        18,
        18,
        5,
        '2024-04-17 07:10:00',
        'Grassland Edge',
        'Deer alert calls heard'
    ),
    (
        19,
        19,
        6,
        '2024-04-19 12:00:00',
        'Boat Channel 2',
        'Dolphins following fishing boat'
    ),
    (
        20,
        20,
        7,
        '2024-04-21 10:15:00',
        'Snowfall Pass',
        'Adjacent feeding on fish'
    ),
    (
        21,
        1,
        12,
        '2024-03-15 06:30:00',
        'Sundarbans West Zone',
        'Adult male tiger spotted near riverbank'
    ),
    (
        22,
        2,
        10,
        '2024-03-16 14:45:00',
        'Snowfall Pass',
        'Large crocodile basking on mudflat'
    );

--Question 1:Register a new ranger with provided data with name = 'Derek Fox' and region = 'Coastal Plains'
INSERT INTO rangers (ranger_id, name, region) VALUES (31,'Derek Fox','Coastal Plains');

--Question 2:Count unique species ever sighted.
SELECT COUNT(DISTINCT sig.species_id) AS unique_species_count FROM sightings AS sig
JOIN species AS s ON sig.species_id = s.species_id;

--Question 3: Find all sightings where the location includes "Pass".
SELECT sighting_id,species_id,ranger_id,"location",sighting_time,notes FROM sightings WHERE "location" ILIKE '%Pass%';

--Question 4:  List each ranger's name and their total number of sightings.
SELECT r.name AS ranger_name, COUNT(s.sighting_id) AS total_sightings FROM rangers AS r
LEFT JOIN sightings AS s ON r.ranger_id = s.ranger_id
GROUP BY r.name
ORDER BY total_sightings DESC;

--Question 5:List species that have never been sighted.
SELECT common_name FROM species AS s
LEFT JOIN sightings AS sig ON s.species_id = sig.species_id
WHERE sig.sighting_id IS NULL;

--Question 6: Show the most recent 2 sightings.
SELECT common_name,sighting_time,"name" FROM sightings
JOIN rangers ON sightings.ranger_id = rangers.ranger_id
JOIN species ON sightings.species_id = species.species_id
ORDER BY sighting_time DESC LIMIT 2;

--Question 7: Update all species discovered before year 1800 to have status 'Historic'.
UPDATE species
SET conservation_status = 'Historic'
WHERE extract(YEAR FROM discovery_date) < 1800;

--Question 8: Label each sighting's time of day as 'Morning', 'Afternoon', or 'Evening'.
SELECT sighting_id,
    CASE
        WHEN extract(HOUR FROM sighting_time) < 12 THEN 'Morning'
        WHEN extract(HOUR FROM sighting_time) < 18 THEN 'Afternoon'
        ELSE 'Evening'
    END AS time_of_day
FROM sightings;

--Question 9: Delete rangers who have never sighted any species
DELETE FROM rangers
WHERE ranger_id IN (
    SELECT r.ranger_id
    FROM rangers AS r
    LEFT JOIN sightings AS s ON r.ranger_id = s.ranger_id
    WHERE s.sighting_id IS NULL
);