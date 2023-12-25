-- liquibase formatted sql
-- changeset author:oskachkov

CREATE TABLE advisors(
    user_id INTEGER NOT NULL ,
    role role_enum NOT NULL ,
    CONSTRAINT advisors_PK PRIMARY KEY (user_id),
    CONSTRAINT advisors_users_FK FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);