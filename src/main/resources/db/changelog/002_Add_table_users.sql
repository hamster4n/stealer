-- liquibase formatted sql
-- changeset author:oskachkov

CREATE TABLE users(
    id SERIAL ,
    email VARCHAR(255) NOT NULL ,
    username VARCHAR(255) NOT NULL ,
    CONSTRAINT users_PK PRIMARY KEY (id),
    CONSTRAINT users_email_UQ UNIQUE (email),
    CONSTRAINT users_username_UQ UNIQUE (username)
);