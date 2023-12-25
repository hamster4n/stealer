-- liquibase formatted sql
-- changeset author:oskachkov

CREATE TABLE addresses(
    applicant_id INTEGER ,
    city VARCHAR(255) NOT NULL ,
    street VARCHAR(255) NOT NULL ,
    number VARCHAR(5) NOT NULL ,
    zip VARCHAR(5) NOT NULL,
    apt VARCHAR(5) NOT NULL,
    CONSTRAINT addresses_PK PRIMARY KEY (applicant_id),
    CONSTRAINT addresses_applicants_FK FOREIGN KEY (applicant_id) REFERENCES applicants (user_id) ON DELETE CASCADE
);