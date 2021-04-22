USE kinopoisk;

-- Поиск списка актеров по названию фильмов
SELECT a.name, a.last_name, a.year_birth
FROM `actor` a
         JOIN `actor_in_movie` am ON a.id = am.actor_id
         JOIN `movie` m ON m.id = am.movie_id
WHERE m.title = "Libero quia quos id at et magni."

-- Количество фильмов по годам
SELECT m.year, COUNT(*) as total_movies
FROM `movie` m
GROUP BY m.`year`
ORDER BY total_movies DESC

-- Количество фильмов по жанрам
SELECT g.name, COUNT(m.title) as total_movies
FROM `genre` g
         JOIN `movie` m ON m.genre_id = g.id
GROUP BY g.name
ORDER BY total_movies DESC

-- Средний рейтинг по фильмам
SELECT m.title, AVG(r.value) as mean_rank
FROM `user_rank_movie` urm
         JOIN `rank` r ON urm.rank_id = r.id
         JOIN `movie` m ON urm.movie_id = m.id
GROUP BY m.title
ORDER BY mean_rank DESC

