CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
);

DROP TABLE post;

INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');


INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash!', 2),
('Batash just shared an amazing recipe!', 1),
('Exploring adventures with Sagor', 3),
('Nodi''s wisdom always leaves me inspired', 4);


SELECT * FROM "user"

SELECT * FROM post

INSERT into post (title, user_id) VALUES('test', NULL)