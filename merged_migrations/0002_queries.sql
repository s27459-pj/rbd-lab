-- #region Music data (INSERT)
-- Music-related content:
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

-- #endregion Music data
--
-- #region User data (INSERT)
-- User-related content:
-- - users
-- - followed artists
-- - liked albums
-- - liked songs
-- - playlists
-- - playlist entries
-- - followed playlists
-----------------------
insert into
    user_ ("id", "username", "email", "password_hash")
values
    (
        1,
        'johndoe',
        'johndoe@example.com',
        '$2a$12$uJ1vJ5GJ7r5KJZzqz5fz7OJ5Zz8J8vZz8J8vZz8J8vZz8vZz8J8vZ'
    ),
    (
        2,
        'janedoe',
        'janedoe@example.com',
        '$2a$12$uJ1vJ5GJ7r5KJZzqz5fz7OJ5Zz8J8vZz8J8vZz8J8vZz8vZz8J8vZ'
    ),
    (
        3,
        'bobsmith',
        'bobsmith@example.com',
        '$2a$12$uJ1vJ5GJ7r5KJZzqz5fz7OJ5Zz8J8vZz8J8vZz8J8vZz8vZz8J8vZ'
    ),
    (
        4,
        'sarahjones',
        'sarahjones@example.com',
        '$2a$12$uJ1vJ5GJ7r5KJZzqz5fz7OJ5Zz8J8vZz8J8vZz8J8vZz8vZz8J8vZ'
    ),
    (
        5,
        'michaelbrown',
        'michaelbrown@example.com',
        '$2a$12$uJ1vJ5GJ7r5KJZzqz5fz7OJ5Zz8J8vZz8J8vZz8J8vZz8vZz8J8vZ'
    ),
    (
        6,
        'emilydavis',
        'emilydavis@example.com',
        '$2a$12$uJ1vJ5GJ7r5KJZzqz5fz7OJ5Zz8J8vZz8J8vZz8J8vZz8vZz8J8vZ'
    ),
    (
        7,
        'davidlee',
        'davidlee@example.com',
        '$2a$12$uJ1vJ5GJ7r5KJZzqz5fz7OJ5Zz8J8vZz8J8vZz8J8vZz8vZz8J8vZ'
    ),
    (
        8,
        'jessicawilson',
        'jessicawilson@example.com',
        '$2a$12$uJ1vJ5GJ7r5KJZzqz5fz7OJ5Zz8J8vZz8J8vZz8J8vZz8vZz8J8vZ'
    ),
    (
        9,
        'peterjackson',
        'peterjackson@example.com',
        '$2a$12$uJ1vJ5GJ7r5KJZzqz5fz7OJ5Zz8J8vZz8J8vZz8J8vZz8vZz8J8vZ'
    ),
    (
        10,
        'laurasmith',
        'laurasmith@example.com',
        '$2a$12$uJ1vJ5GJ7r5KJZzqz5fz7OJ5Zz8J8vZz8J8vZz8J8vZz8vZz8J8vZ'
    );

insert into
    followed_artist ("user_id", "artist_id")
values
    (1, 1),
    (1, 10),
    (2, 9),
    (2, 7),
    (3, 3),
    (3, 5),
    (4, 1),
    (4, 2),
    (5, 4),
    (5, 5),
    (6, 7),
    (6, 8),
    (7, 10),
    (7, 9),
    (8, 5),
    (8, 2),
    (9, 10),
    (9, 2),
    (10, 1),
    (10, 2);

insert into
    liked_album ("user_id", "album_id")
values
    (1, 3),
    (1, 5),
    (2, 1),
    (3, 7),
    (3, 10),
    (4, 2),
    (5, 8),
    (6, 4),
    (7, 6),
    (8, 9);

insert into
    liked_song ("user_id", "song_id")
values
    (1, 5),
    (1, 12),
    (2, 20),
    (3, 8),
    (3, 15),
    (4, 2),
    (5, 30),
    (6, 44),
    (7, 6),
    (8, 9),
    (4, 22),
    (5, 32),
    (5, 44),
    (6, 14),
    (7, 2),
    (8, 3),
    (6, 41),
    (7, 21),
    (8, 19),
    (9, 10),
    (9, 2),
    (9, 5),
    (10, 1),
    (10, 21),
    (10, 2);

insert into
    playlist ("id", "user_id", "visibility", "name")
values
    (1, 1, 'public', 'My Public Playlist'),
    (2, 2, 'private', 'Private Jams'),
    (3, 3, 'public', 'Cool Tracks'),
    (4, 4, 'private', 'Secret Playlist'),
    (5, 5, 'public', 'Groovy Tunes'),
    (6, 6, 'public', 'Chill Vibes'),
    (7, 7, 'private', 'Top Secret Mix'),
    (8, 8, 'public', 'Eclectic Mix'),
    (9, 9, 'public', 'Favorite Hits'),
    (10, 10, 'private', 'Personal Selection');

insert into
    playlist_entry ("playlist_id", "song_id", "order")
values
    (1, 5, 1),
    (1, 12, 2),
    (1, 20, 3),
    (1, 8, 4),
    (1, 15, 5),
    (2, 2, 1),
    (2, 30, 2),
    (2, 44, 3),
    (2, 6, 4),
    (2, 9, 5),
    (3, 5, 1),
    (3, 12, 2),
    (3, 20, 3),
    (3, 8, 4),
    (3, 15, 5),
    (4, 2, 1),
    (4, 30, 2),
    (4, 44, 3),
    (4, 6, 4),
    (4, 9, 5),
    (5, 5, 1),
    (5, 12, 2),
    (5, 20, 3),
    (5, 8, 4),
    (5, 15, 5),
    (6, 2, 1),
    (6, 30, 2),
    (6, 44, 3),
    (6, 6, 4),
    (6, 9, 5),
    (7, 5, 1),
    (7, 12, 2),
    (7, 20, 3),
    (7, 8, 4),
    (7, 15, 5),
    (8, 2, 1),
    (8, 30, 2),
    (8, 44, 3),
    (8, 6, 4),
    (8, 9, 5),
    (9, 5, 1),
    (9, 12, 2),
    (9, 20, 3),
    (9, 8, 4),
    (9, 15, 5),
    (10, 2, 1),
    (10, 30, 2),
    (10, 44, 3),
    (10, 6, 4),
    (10, 9, 5);

insert into
    followed_playlist ("user_id", "playlist_id")
values
    (1, 1),
    (1, 10),
    (2, 9),
    (2, 7),
    (3, 3),
    (3, 5),
    (4, 1),
    (4, 2),
    (5, 4),
    (5, 5),
    (6, 7),
    (6, 8),
    (7, 10),
    (7, 9),
    (8, 5),
    (8, 2),
    (9, 10),
    (9, 2),
    (10, 1),
    (10, 2);

-- #endregion User data
--
-- #region Data queries (SELECT)
-- List all playlist names and the amount of songs they contain
select
    playlist.id,
    playlist.name,
    count(pe.*),
    playlist.visibility
from
    playlist_entry pe
    join playlist on pe.playlist_id = playlist.id
group by
    playlist.id;

-- List all song, artist and album names from playlist id 2
select
    song.title "Title",
    album.name "Album",
    artist.name "Artist",
    song.duration || 's' "Duration"
from
    playlist_entry pe
    join song on pe.song_id = song.id
    join album on song.album_id = album.id
    join artist on album.artist_id = artist.id
where
    pe.playlist_id = 2
order by
    pe.order;

-- List all song, artist and album names which are in at least one playlist
select distinct
    song.title "Title",
    album.name "Album",
    artist.name "Artist"
from
    playlist_entry pe
    join song on pe.song_id = song.id
    join album on song.album_id = album.id
    join artist on album.artist_id = artist.id
order by
    song.title,
    album.name,
    artist.name;

-- List all song, artist and album names which aren't in any playlist
select
    song.title "Title",
    album.name "Album",
    artist.name "Artist"
from
    song
    join album on song.album_id = album.id
    join artist on album.artist_id = artist.id
where
    not exists (
        select
            1
        from
            playlist_entry
        where
            song_id = song.id
    );

-- Find total duration of all playlists
select
    playlist.name "Playlist",
    sum(song.duration) || 's' "Total length"
from
    playlist_entry pe
    join playlist on pe.playlist_id = playlist.id
    join song on pe.song_id = song.id
group by
    playlist.id
order by
    2 desc;

-- Find the overall average song duration
select
    avg(song.duration) || 's' "Average song duration"
from
    song;

-- Find the average song duration per album
select
    album.name "Album",
    avg(song.duration) || 's' "Average song duration"
from
    song
    join album on song.album_id = album.id
group by
    album.id
order by
    2 desc;

-- Find songs with the lowest amount of likes
select
    count(ls.id) "Likes",
    song.title "Song"
from
    liked_song ls
    join song on ls.song_id = song.id
group by
    song.id
order by
    1 asc;

-- Find shortest songs
select
    song.title "Song",
    song.duration || 's' "Duration"
from
    song
order by
    song.duration asc;

-- Find the total duration of all songs  in the database
select
    sum(song.duration) || 's' "Total duration of all songs"
from
    song;

-- Find all albums which last longer than 1000 seconds
select
    album.name "Album",
    sum(song.duration) || 's' "Total Duration of album"
from
    song
    join album on song.album_id = album.id
group by
    album.id
having
    sum(song.duration) > 1000;

-- #endregion Data queries
--
-- #region Data updates (UPDATE)
-- #region user_
-- Update john doe's username and email
update user_
set
    username = 'johndoe123',
    email = 'johndoe123@example.com',
    updated_at = now ()
where
    id = 1;

-- Append '42' to users' 3-7 username
update user_
set
    username = username || '42',
    updated_at = now ()
where
    id between 3 and 7;

-- #endregion user_
-- #region artist
-- Change name of artist 5 to 'AD/HD'
update artist
set
    name = 'AD/HD',
    updated_at = now ()
where
    id = 5;

-- Make artists' 6-8 name uppercase
update artist
set
    name = upper(name),
    updated_at = now ()
where
    id between 6 and 8;

-- #endregion artist
-- #region album
-- Append ' 2' to albums released in the 80s
update album
set
    name = name || ' 2',
    updated_at = now ()
where
    released_at between '1980-01-01' and '1989-12-31';

-- Change artist of album 10  (OK Computer) to artist 6 (Queen)
update album
set
    artist_id = 6,
    updated_at = now ()
where
    id = 10;

-- #endregion album
-- #region song
-- Append ' (Remastered)' to songs from album 1 (Abbey Road)
update song
set
    title = title || ' (Remastered)',
    updated_at = now ()
where
    album_id = 1;

-- Add ' (Live)' to songs longer than 5 minutes
update song
set
    title = title || ' (Live)',
    updated_at = now ()
where
    duration > 300;

-- #endregion song
-- #region playlist
-- Change visibility of playlist 1 to 'private'
update playlist
set
    visibility = 'private',
    updated_at = now ()
where
    id = 1;

-- Set visibility of playlists containing 'Mix' in their name to 'public'
update playlist
set
    visibility = 'public',
    updated_at = now ()
where
    name like '%Mix%';

-- #endregion playlist
-- #endregion Data updates
--
-- #region Schema updates (ALTER)
-- Add a birth_date column to the artist table
alter table artist
add column birth_date timestamp;

-- Drop the birth_date column from the artist table
alter table artist
drop column birth_date;

-- #endregion Schema updates
--
-- #region Deletes (DELETE)
-- Delete Users 1, 2, 3 and records referencing them
delete from followed_artist
where
    user_id between 1 and 3
    or artist_id = 3;

delete from liked_album
where
    user_id between 1 and 3
    or album_id = 3;

delete from liked_song
where
    user_id between 1 and 3
    or artist_id = 3;

delete from followed_playlist
where
    user_id between 1 and 3;

-- Delete all Playlist Entries of Users 1, 2, 3.
-- Also remove all playlist entries from album 3
delete from playlist_entry
where
    user_id between 1 and 3
    or song_id in (
        select
            id
        from
            song
        where
            album_id = 3
    );

-- Delete playlists of users 1, 2, 3
delete from playlist
where
    user_id between 1 and 3;

-- Delete users 1, 2, 3
delete from user_
where
    id between 1 and 3;

-- Delete all songs from album 3 'Led Zeppelin II'
delete from song
where
    album_id = 3;

-- Delete album 3 'Led Zeppelin II'
delete from album
where
    artist_id = 3;

-- Delete artist 3 'Led Zeppelin'
delete from artist
where
    id = 3;

-- Remove all data from the playlist table along with all
-- referencing records (playlist_entry and followed_playlist)
truncate table playlist cascade;

-- #endregion Deletes
