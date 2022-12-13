CREATE TABLE towork
(
    id              SERIAL PRIMARY KEY,
    description     VARCHAR(250) not null,
    last_modified   TIMESTAMP
);

-- SELECT NOW();
INSERT into towork (description,last_modified) VALUES ('data01', CURRENT_TIMESTAMP);
INSERT into towork (description,last_modified) VALUES ('data02', CURRENT_TIMESTAMP);
INSERT into towork (description,last_modified) VALUES ('data03', CURRENT_TIMESTAMP);
INSERT into towork (description,last_modified) VALUES ('data04', CURRENT_TIMESTAMP);
INSERT into towork (description,last_modified) VALUES ('data05', CURRENT_TIMESTAMP);
INSERT into towork (description,last_modified) VALUES ('data06', CURRENT_TIMESTAMP);
INSERT into towork (description,last_modified) VALUES ('data07', CURRENT_TIMESTAMP);
INSERT into towork (description,last_modified) VALUES ('data08', CURRENT_TIMESTAMP);
INSERT into towork (description,last_modified) VALUES ('data09', CURRENT_TIMESTAMP);
INSERT into towork (description,last_modified) VALUES ('data10', CURRENT_TIMESTAMP);
INSERT into towork (description,last_modified) VALUES ('data11', CURRENT_TIMESTAMP);
