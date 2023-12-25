-- liquibase formatted sql
-- changeset author:oskachkov

CREATE TABLE applicants(
    user_id INTEGER NOT NULL ,
    first_name VARCHAR(255) NOT NULL ,
    last_name VARCHAR(255) NOT NULL ,
    social_security_number INTEGER NOT NULL ,
    CONSTRAINT applicants_PK PRIMARY KEY (user_id) ,
    CONSTRAINT applicants_social_security_number UNIQUE (social_security_number) ,
    CONSTRAINT applicants_users_FK FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);