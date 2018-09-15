-- Your SQL goes here
CREATE TABLE reshares (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE NOT NULL,
    post_id INTEGER REFERENCES posts(id) ON DELETE CASCADE NOT NULL,
    ap_url VARCHAR NOT NULL DEFAULT '',
    creation_date INTEGER NOT NULL DEFAULT CURRENT_TIMESTAMP
)
