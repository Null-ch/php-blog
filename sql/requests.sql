/* Create Database */

CREATE DATABASE blog_php;

/* Add posts table */

CREATE TABLE post (
    post_id int UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    url_key VARCHAR(255) NOT NULL,
    image_path VARCHAR(255) NULL,
    content TEXT DEFAULT  NULL,
    description VARCHAR(255) DEFAULT  NULL,
    published_date DATETIME NOT NULL,
    PRIMARY KEY (post_id),
    UNIQUE KEY url_key (url_key)
) ENGINE=InnoDB;

/* Add posts in table */

INSERT INTO post (title, url_key, content, description, published_date) VALUES ('My first post', 'first-post', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here,ike readable English.', now());
INSERT INTO post (title, url_key, content, description, published_date) VALUES ('Second post', 'second-post', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.', now());
INSERT INTO post (title, url_key, content, description, published_date) VALUES ('My third post', 'my-third-post', 'There are many variations of passages of Lorem Ipsum available', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable.', now());
