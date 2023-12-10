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

-- Delete all Playlist Entries and Playlists of Users 1, 2, 3.
-- Also remove playlist entries referencing songs from album 3
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

delete from playlist
where
    user_id between 1 and 3;

delete from user_
where
    id between 1 and 3;

-- Delete artist 3 'Led Zeppelin' and records referencing it
delete from song
where
    -- Album 'Led Zeppelin II'
    album_id = 3;

delete from album
where
    artist_id = 3;

delete from artist
where
    id = 3;

-- Remove all data from the playlist table
-- truncate table
--     playlist
--     cascade;
