-- Your SQL goes here
CREATE TABLE follows (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    follower_id INTEGER REFERENCES users(id) ON DELETE CASCADE NOT NULL,
    following_id INTEGER REFERENCES users(id) ON DELETE CASCADE NOT NULL,
    ap_url TEXT NOT NULL default ''
)
