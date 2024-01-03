 INSERT INTO public.artists (artist_id, artist_name) VALUES(1, 'Linkin Park');

 INSERT INTO public.artists (artist_id, artist_name) VALUES(2, 'Coldplay');

 INSERT INTO public.artists (artist_id, artist_name) VALUES(3, 'Король и Шут');

 INSERT INTO public.artists (artist_id, artist_name) VALUES(4, 'Йорш');

 INSERT INTO public.artists (artist_id, artist_name) VALUES(5, 'Enter Shikari');

 INSERT INTO public.genres (genre_id, genre_name) VALUES(1, 'Панк Рок');

 INSERT INTO public.genres (genre_id, genre_name) VALUES(2, 'Альтернативный рок');

 INSERT INTO public.genres (genre_id, genre_name) VALUES(3, 'Поп рок');

 INSERT INTO public.albums (album_id, album_name, release_year) VALUES(1, 'Meteora', 2003);

 INSERT INTO public.albums (album_id, album_name, release_year) VALUES(2, 'Камнем по голове', 1996);

 INSERT INTO public.albums (album_id, album_name, release_year) VALUES(3, 'Common Dreads', 2003);

 INSERT INTO public.albums (album_id, album_name, release_year) VALUES(4, 'Music of the Spheres', 2020);

 INSERT INTO public.albums (album_id, album_name, release_year) VALUES(5, 'Светлячки', 2017);

 INSERT INTO public.tracks (track_id, track_name, duration,  album_id) VALUES(1, 'Breacking the habbit', 198, 1);

 INSERT INTO public.tracks (track_id, track_name, duration,  album_id) VALUES(2, 'By myself', 214, 1);

 INSERT INTO public.tracks (track_id, track_name, duration,  album_id) VALUES(3, 'Дурак и молния', 114, 2);

 INSERT INTO public.tracks (track_id, track_name, duration,  album_id) VALUES(4, 'Блуждают тени', 132, 2);

 INSERT INTO public.tracks (track_id, track_name, duration,  album_id) VALUES(5, 'Juggernauts', 284, 3);

 INSERT INTO public.tracks (track_id, track_name, duration,  album_id) VALUES(6, 'Wall', 269, 3);

 INSERT INTO public.tracks (track_id, track_name, duration,  album_id) VALUES(7, 'Let Somebody Go', 221, 4);

 INSERT INTO public.tracks (track_id, track_name, duration,  album_id) VALUES(8, 'Светлячки', 269, 3);

 INSERT INTO public.compilations (compilation_id, compilation_name, release_year) VALUES(1, 'Tribalism', 2010);

 INSERT INTO public.compilations (compilation_id, compilation_name, release_year) VALUES(2, 'Лучшие песни', 2019);

 INSERT INTO public.compilations (compilation_id, compilation_name, release_year) VALUES(3, 'Studio Collection', 2013);

 INSERT INTO public.compilations (compilation_id, compilation_name, release_year) VALUES(4, 'Лучший рок', 2023);

 INSERT INTO public.artists_albums (artist_id, album_id) VALUES(1, 1);

 INSERT INTO public.artists_albums (artist_id, album_id) VALUES(2, 4);

 INSERT INTO public.artists_albums (artist_id, album_id) VALUES(3, 2);

 INSERT INTO public.artists_albums (artist_id, album_id) VALUES(4, 5);

 INSERT INTO public.artists_albums (artist_id, album_id) VALUES(5, 3);

 INSERT INTO public.artists_genres (artist_id, genre_id) VALUES(1, 2);

 INSERT INTO public.artists_genres (artist_id, genre_id) VALUES(2, 3);

 INSERT INTO public.artists_genres (artist_id, genre_id) VALUES(3, 1);

 INSERT INTO public.artists_genres (artist_id, genre_id) VALUES(4, 1);

 INSERT INTO public.artists_genres (artist_id, genre_id) VALUES(5, 2);

 INSERT INTO public.compilations_tracks  (compilation_id, track_id) VALUES(1, 1);

 INSERT INTO public.compilations_tracks  (compilation_id, track_id) VALUES(1, 2);

 INSERT INTO public.compilations_tracks  (compilation_id, track_id) VALUES(2, 1);

 INSERT INTO public.compilations_tracks  (compilation_id, track_id) VALUES(2, 2);

 INSERT INTO public.compilations_tracks  (compilation_id, track_id) VALUES(3, 5);

 INSERT INTO public.compilations_tracks  (compilation_id, track_id) VALUES(3, 6);

 INSERT INTO public.compilations_tracks  (compilation_id, track_id) VALUES(4, 2);

 INSERT INTO public.compilations_tracks  (compilation_id, track_id) VALUES(4, 7);