-- liquibase formatted sql
-- changeset author:oskachkov

CREATE TABLE phone_numbers(
    id SERIAL,
    applicant_id INTEGER NOT NULL ,
    number INTEGER NOT NULL ,
    type phone_enum NOT NULL ,
    CONSTRAINT phone_numbers_PK PRIMARY KEY (id) ,
    CONSTRAINT phone_numbers_applicants_FK FOREIGN KEY (applicant_id) REFERENCES applicants (user_id) ON DELETE CASCADE
);