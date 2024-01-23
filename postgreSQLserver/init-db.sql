-- Create the twitch database
CREATE DATABASE twitch;

-- Connect to the twitch database
\c twitch;

-- Create the chat table

CREATE TABLE video_play (
    time TIMESTAMP,
    device_id VARCHAR(255),
    login VARCHAR(255),
    channel VARCHAR(255),
    country VARCHAR(10),
    player VARCHAR(50),
    game VARCHAR(255),
    stream_format VARCHAR(50),
    subscriber varchar(20)
);
COPY video_play FROM '/data/video_play.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE chat (
    time TIMESTAMP,
    device_id VARCHAR(255),
    login VARCHAR(255),
    channel VARCHAR(255),
    country VARCHAR(10),
    player VARCHAR(50),
    game VARCHAR(255)
);

COPY chat FROM '/data/chat.csv' DELIMITER ',' CSV HEADER;