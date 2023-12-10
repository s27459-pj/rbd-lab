-- This file contains data about user-related content:
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
    (8, 9);

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
