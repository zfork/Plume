-- Your SQL goes here
CREATE TABLE posts (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    blog_id INTEGER REFERENCES blogs(id) ON DELETE CASCADE NOT NULL,
    slug VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    content TEXT NOT NULL DEFAULT '',
    published BOOLEAN NOT NULL DEFAULT 'f',
    license VARCHAR NOT NULL DEFAULT 'CC-0',
    creation_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ap_url VARCHAR NOT NULL DEFAULT '',
    subtitle TEXT NOT NULL DEFAULT '',
    source TEXT NOT NULL DEFAULT ''
)
