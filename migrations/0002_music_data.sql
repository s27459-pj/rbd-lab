-- This file contains data about music-related content:
-- - artists
-- - albums
-- - songs
---------------------------------
insert into
    artist ("id", "name")
values
    (1, 'The Beatles'),
    (2, 'The Rolling Stones'),
    (3, 'Led Zeppelin'),
    (4, 'Pink Floyd'),
    (5, 'AC/DC'),
    (6, 'Queen'),
    (7, 'Metallica'),
    (8, 'Nirvana'),
    (9, 'Guns N'' Roses'),
    (10, 'Radiohead');

insert into
    album ("id", "artist_id", "released_at", "name")
values
    (1, 1, '1969-09-26', 'Abbey Road'),
    (2, 2, '1972-05-12', 'Exile on Main St.'),
    (3, 3, '1969-10-22', 'Led Zeppelin II'),
    (4, 4, '1973-03-01', 'The Dark Side of the Moon'),
    (5, 5, '1980-07-25', 'Back in Black'),
    (6, 6, '1975-11-21', 'A Night at the Opera'),
    (7, 7, '1986-03-03', 'Master of Puppets'),
    (8, 8, '1991-09-24', 'Nevermind'),
    (9, 9, '1987-07-21', 'Appetite for Destruction'),
    (10, 10, '1997-05-28', 'OK Computer');

insert into
    song ("album_id", "order", "title", "duration")
values
    -- The Beatles - Abbey Road
    (1, 1, 'Come Together', 259),
    (1, 2, 'Something', 183),
    (1, 3, 'Maxwell''s Silver Hammer', 207),
    (1, 4, 'Oh! Darling', 206),
    (1, 5, 'Octopus''s Garden', 171),
    -- The Rolling Stones - Exile on Main St.
    (2, 1, 'Rocks Off', 271),
    (2, 2, 'Rip This Joint', 144),
    (2, 3, 'Shake Your Hips', 179),
    (2, 4, 'Casino Boogie', 215),
    (2, 5, 'Tumbling Dice', 227),
    -- Led Zeppelin - Led Zeppelin II
    (3, 1, 'Whole Lotta Love', 333),
    (3, 2, 'What Is and What Should Never Be', 285),
    (3, 3, 'The Lemon Song', 380),
    (3, 4, 'Thank You', 289),
    (3, 5, 'Heartbreaker', 254),
    -- Pink Floyd - The Dark Side of the Moon
    (4, 1, 'Speak to Me', 90),
    (4, 2, 'Breathe', 165),
    (4, 3, 'On the Run', 216),
    (4, 4, 'Time', 413),
    (4, 5, 'The Great Gig in the Sky', 283),
    -- AC/DC - Back in Black
    (5, 1, 'Hells Bells', 313),
    (5, 2, 'Shoot to Thrill', 319),
    (5, 3, 'What Do You Do for Money Honey', 221),
    (5, 4, 'Givin the Dog a Bone', 207),
    (5, 5, 'Let Me Put My Love into You', 255),
    -- Queen - A Night at the Opera
    (6, 1, 'Death on Two Legs (Dedicated to...)', 224),
    (6, 2, 'Lazing on a Sunday Afternoon', 85),
    (6, 3, 'I''m in Love with My Car', 195),
    (6, 4, 'You''re My Best Friend', 158),
    (6, 5, '39', 182),
    -- Metallica - Master of Puppets
    (7, 1, 'Battery', 312),
    (7, 2, 'Master of Puppets', 517),
    (7, 3, 'The Thing That Should Not Be', 394),
    (7, 4, 'Welcome Home (Sanitarium)', 387),
    (7, 5, 'Disposable Heroes', 457),
    -- Nirvana - Nevermind
    (8, 1, 'Smells Like Teen Spirit', 278),
    (8, 2, 'In Bloom', 254),
    (8, 3, 'Come as You Are', 219),
    (8, 4, 'Breed', 184),
    (8, 5, 'Lounge Act', 156),
    -- Guns N' Roses - Appetite for Destruction
    (9, 1, 'Welcome to the Jungle', 275),
    (9, 2, 'It''s So Easy', 187),
    (9, 3, 'Nightrain', 265),
    (9, 4, 'Out ta Get Me', 279),
    (9, 5, 'Mr. Brownstone', 223),
    -- Radiohead - OK Computer
    (10, 1, 'Airbag', 236),
    (10, 2, 'Paranoid Android', 383),
    (10, 3, 'Subterranean Homesick Alien', 267),
    (10, 4, 'Exit Music (For a Film)', 267),
    (10, 5, 'Let Down', 299);
