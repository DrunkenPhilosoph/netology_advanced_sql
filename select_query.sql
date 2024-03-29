--Задание 2

SELECT track_name, duration
FROM tracks
WHERE duration = (SELECT max(duration) FROM tracks);

SELECT track_name, duration
FROM tracks
WHERE duration > 210
ORDER BY duration desc;

SELECT compilation_name, release_year
from compilations
WHERE release_year >= 2018 AND release_year <= 2020;

SELECT artist_name
FROM artists
WHERE artist_name NOT LIKE '% %';

SELECT track_name
FROM tracks
WHERE track_name iLIKE '%my%';

--Задание 3

SELECT g.genre_name, COUNT(ag.artist_id)
FROM genres g
LEFT JOIN artists_genres ag ON g.genre_id = ag.genre_id
LEFT JOIN artists a ON ag.artist_id = a.artist_id
GROUP BY g.genre_name;

SELECT count(track_name)
FROM tracks t 
LEFT JOIN albums a ON t.album_id = a.album_id 
where a.release_year >= 2019 AND a.release_year <= 2020;

SELECT avg(duration), album_name
FROM tracks t 
LEFT JOIN albums a ON a.album_id = t.album_id 
GROUP BY album_name;

SELECT artist_name
FROM artists a 
LEFT JOIN artists_albums aa ON a.artist_id = aa.artist_id 
LEFT JOIN albums a2 ON a2.album_id = aa.album_id 
WHERE a.artist_name not IN (select artist_name from albums a3 left join artists_albums aa2 on a3.album_id = aa2.album_id left join artists a4 on a4.artist_id = aa2.artist_id where release_year = 2020);

SELECT compilation_name
FROM compilations c 
JOIN compilations_tracks ct ON ct.compilation_id = c.compilation_id 
JOIN tracks t ON ct.track_id =  t.track_id
JOIN albums a ON t.album_id = a.album_id
JOIN artists_albums aa  ON aa.album_id = a.album_id 
JOIN artists a2 ON a2.artist_id = aa.artist_id 
WHERE a2.artist_name = 'Enter Shikari';
