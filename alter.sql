SELECT * FROM user4;
ALTER TABLE user4 
ADD COLUMN phone VARCHAR(11) DEFAULT '01234543456' NOT NULL;
ALTER TABLE user4 
DROP COLUMN email;
ALTER TABLE user4 
RENAME COLUMN phone to phone_number;

ALTER TABLE user4 
ALTER COLUMN name TYPE VARCHAR(50)

ALTER TABLE user4 
ALTER COLUMN phone_number set NOT null;

ALTER TABLE user4 
ALTER COLUMN phone_number DROP NOT null;

ALTER TABLE user4 
ADD CONSTRAINT UNIQUE_user4_phone_number UNIQUE(phone_number);

ALTER TABLE user4 
DROP CONSTRAINT UNIQUE_user4_phone_number;


INSERT INTO user4 VALUES(4,'khalid', 'khalid@gmail.com','01712345678')