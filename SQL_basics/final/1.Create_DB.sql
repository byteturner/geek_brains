CREATE DATABASE kinopoisk;

USE kinopoisk;

CREATE TABLE `actor`
(
    `id`         int(255) NOT NULL AUTO_INCREMENT,
    `name`       varchar(64) NOT NULL,
    `last_name`  varchar(64) NOT NULL,
    `year_birth` varchar(64) NOT NULL,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

CREATE TABLE `actor_in_movie`
(
    `id`       int(255) NOT NULL AUTO_INCREMENT,
    `movie_id` int(255) NOT NULL,
    `actor_id` int(255) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `producer`
(
    `id`         int(255) NOT NULL AUTO_INCREMENT,
    `name`       varchar(64) NOT NULL,
    `last_name`  varchar(64) NOT NULL,
    `year_birth` varchar(64) NOT NULL,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

CREATE TABLE `producer_in_movie`
(
    `id`          int(255) NOT NULL AUTO_INCREMENT,
    `movie_id`    int(255) NOT NULL,
    `producer_id` int(255) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `genre`
(
    `id`   int(255) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `user`
(
    `id`       int(255) NOT NULL AUTO_INCREMENT,
    `email`    varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `profile`
(
    `id`        int(255) NOT NULL AUTO_INCREMENT,
    `name`      varchar(128),
    `last_name` varchar(128),
    `user_id`   int(255) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `user_rank_movie`
(
    `id`       int NOT NULL AUTO_INCREMENT,
    `user_id`  int(255) NOT NULL,
    `movie_id` int(255) NOT NULL,
    `rank_id`  int(255) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `rank`
(
    `id`    int(255) NOT NULL AUTO_INCREMENT,
    `value` int(255) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `user_favourite_movie`
(
    `id`       int NOT NULL AUTO_INCREMENT,
    `user_id`  int(255) NOT NULL,
    `movie_id` int(255) NOT NULL,
    PRIMARY KEY (`id`)
);

ALTER TABLE `movie`
    ADD CONSTRAINT `movie_fk0` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);

ALTER TABLE `actor_in_movie`
    ADD CONSTRAINT `actor_in_movie_fk0` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`);

ALTER TABLE `actor_in_movie`
    ADD CONSTRAINT `actor_in_movie_fk1` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`id`);

ALTER TABLE `producer_in_movie`
    ADD CONSTRAINT `producer_in_movie_fk0` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`);

ALTER TABLE `producer_in_movie`
    ADD CONSTRAINT `producer_in_movie_fk1` FOREIGN KEY (`producer_id`) REFERENCES `producer` (`id`);

ALTER TABLE `profile`
    ADD CONSTRAINT `profile_fk0` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

ALTER TABLE `user_rank_movie`
    ADD CONSTRAINT `user_rank_movie_fk0` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

ALTER TABLE `user_rank_movie`
    ADD CONSTRAINT `user_rank_movie_fk1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`);

ALTER TABLE `user_rank_movie`
    ADD CONSTRAINT `user_rank_movie_fk2` FOREIGN KEY (`rank_id`) REFERENCES `rank` (`id`);

ALTER TABLE `user_favourite_movie`
    ADD CONSTRAINT `user_favourite_movie_fk0` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

ALTER TABLE `user_favourite_movie`
    ADD CONSTRAINT `user_favourite_movie_fk1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`);

DELIMITER //

CREATE TRIGGER `create_profile`
    AFTER INSERT
    ON `user`
    FOR EACH ROW
BEGIN
    INSERT INTO `profile` (user_id) VALUES (NEW.id);
END //

DELIMITER ;
