-- liquibase formatted sql
-- changeset author:oskachkov

CREATE TABLE applications(
    id SERIAL,
    amount INTEGER NOT NULL ,
    status status_enum NOT NULL DEFAULT 'new',
    created TIMESTAMP NOT NULL DEFAULT NOW(),
    assigned TIMESTAMP NOT NULL ,
    applicant_id INTEGER NOT NULL ,
    advisor_id INTEGER,
    CONSTRAINT applications_PK PRIMARY KEY (id),
    CONSTRAINT applications_applicants_FK FOREIGN KEY (applicant_id) REFERENCES applicants (user_id),
    CONSTRAINT applications_advisors_FK FOREIGN KEY (advisor_id) REFERENCES advisors (user_id)
);