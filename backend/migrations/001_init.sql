-- Initial migration
CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(64), email VARCHAR(128), password_hash TEXT);
CREATE TABLE groups (id SERIAL PRIMARY KEY, name VARCHAR(128));
CREATE TABLE members (id SERIAL PRIMARY KEY, user_id INTEGER, group_id INTEGER, role VARCHAR(20));
CREATE TABLE events (id SERIAL PRIMARY KEY, group_id INTEGER, name VARCHAR(128), datetime TIMESTAMPTZ, location VARCHAR(128));
CREATE TABLE event_attendance (id SERIAL PRIMARY KEY, event_id INTEGER, user_id INTEGER, status VARCHAR(20));
CREATE TABLE availability (id SERIAL PRIMARY KEY, user_id INTEGER, date DATE, status VARCHAR(20));
CREATE TABLE setlists (id SERIAL PRIMARY KEY, group_id INTEGER, event_id INTEGER, title VARCHAR(128));
CREATE TABLE setlist_songs (id SERIAL PRIMARY KEY, setlist_id INTEGER, song_title VARCHAR(128), "order" INTEGER);
CREATE TABLE messages (id SERIAL PRIMARY KEY, group_id INTEGER, user_id INTEGER, content TEXT, created_at TIMESTAMPTZ);
CREATE TABLE files (id SERIAL PRIMARY KEY, event_id INTEGER, uploader_id INTEGER, url TEXT, type VARCHAR(64));
