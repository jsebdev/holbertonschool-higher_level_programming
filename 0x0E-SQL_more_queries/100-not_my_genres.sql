-- list all genres not linked to the show Dexter second line
SELECT tv_genres.name FROM tv_genres
WHERE tv_genres.name NOT IN (
	SELECT tv_genres.name FROM tv_genres
	LEFT JOIN tv_show_genres ON tv_show_genres.genre_id = tv_genres.id
	LEFT JOIN tv_shows ON tv_shows.id=tv_show_genres.show_id
	WHERE tv_shows.title = "Dexter"
)
ORDER BY tv_genres.name ASC;

-- SELECT tv_shows.title, tv_genres.name FROM tv_genres
-- LEFT JOIN tv_show_genres ON tv_show_genres.genre_id=tv_genres.id
-- LEFT JOIN tv_shows ON tv_shows.id=tv_show_genres.show_id AND tv_shows.title="Dexter"
-- ;
-- SELECT tv_genres.name FROM tv_genres
-- LEFT JOIN tv_show_genres ON tv_show_genres.genre_id = tv_genres.id
-- LEFT JOIN tv_shows ON tv_shows.id=tv_show_genres.show_id
-- WHERE tv_shows.title = "Dexter";

-- SELECT tv_shows.title, tv_genres.name FROM tv_genres
-- LEFT JOIN tv_show_genres ON tv_show_genres.genre_id=tv_genres.id
-- LEFT JOIN tv_shows ON tv_shows.id=tv_show_genres.show_id AND tv_shows.title="Dexter";
-- WHERE tv_genres.name IN ("Adventure");
