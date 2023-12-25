-- liquibase formatted sql
-- changeset author:oskachkov

CREATE TYPE role_enum AS ENUM ('associate', 'partner', 'senior');

CREATE TYPE status_enum AS ENUM ('new', 'assigned', 'on_hold', 'approved', 'canceled', 'declined');

CREATE TYPE phone_enum AS ENUM ('home', 'work', 'mobile');

CREATE TYPE user_type_enum AS ENUM ('advisor', 'applicant');