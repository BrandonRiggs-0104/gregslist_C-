CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';


CREATE TABLE
homes(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
address string(50) NOT NULL COMMENT 'The name of the house',
bedrooms SMALLINT,
bathrooms SMALLINT,
petFriendly BOOLEAN DEFAULT TRUE
) default charset utf8 COMMENT '';


DROP TABLE homes;

INSERT INTO
homes (
  address,
  bedrooms,
  bathrooms,
  petFriendly
)

VALUES (
  '1234 S Test St',
  3,
  2,
  false
),
(
  '9876 N Test St',
  20,
  13,
  true
);

SELECT address FROM homes;

SELECT address, petFriendly FROM homes;

SELECT * FROM homes; 

DELETE FROM homes WHERE id = 2 LIMIT 1;

UPDATE homes SET bedrooms = 25 WHERE id = 1 LIMIT 1;




