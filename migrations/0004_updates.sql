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
