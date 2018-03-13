CREATE TABLE t_apply
(
  id          INT AUTO_INCREMENT
    PRIMARY KEY,
  jobId       INT            NULL,
  name        VARCHAR(100)   NULL,
  phone       VARCHAR(100)   NULL,
  description VARCHAR(10000) NULL,
  allow       INT            NULL
)
  ENGINE = InnoDB;

CREATE TABLE t_category
(
  id   INT AUTO_INCREMENT
    PRIMARY KEY,
  name VARCHAR(50) NULL
)
  ENGINE = InnoDB
  CHARSET = utf8;

CREATE TABLE t_discuss
(
  id        INT AUTO_INCREMENT
    PRIMARY KEY,
  content   VARCHAR(10000) NULL,
  jobId     INT            NULL,
  creatorId INT            NULL
)
  ENGINE = InnoDB;

CREATE TABLE t_job
(
  id           INT AUTO_INCREMENT
    PRIMARY KEY,
  title        VARCHAR(100) NULL,
  company      VARCHAR(100) NULL,
  description  TEXT         NULL,
  how_to_apply TEXT         NULL,
  category_id  VARCHAR(11)  NULL,
  city         VARCHAR(100) NULL,
  country      VARCHAR(100) NULL,
  is_public    INT          NULL,
  is_expiry    INT          NULL,
  user_id      INT          NULL,
  job_type_id  VARCHAR(11)  NULL,
  create_time  DATE         NULL,
  expiry_time  DATE         NULL
)
  ENGINE = InnoDB
  CHARSET = utf8;

CREATE TABLE t_job_tag
(
  id     INT AUTO_INCREMENT
    PRIMARY KEY,
  job_id INT NULL,
  tag_id INT NULL
)
  ENGINE = InnoDB
  CHARSET = utf8;

CREATE TABLE t_promo_code
(
  id      INT AUTO_INCREMENT
    PRIMARY KEY,
  code    VARCHAR(50) NULL,
  user_id INT         NULL,
  is_use  INT         NULL
)
  ENGINE = InnoDB
  CHARSET = utf8;

CREATE TABLE t_tag
(
  id             INT AUTO_INCREMENT
    PRIMARY KEY,
  name           VARCHAR(50) NULL,
  number         INT         NULL,
  create_user_id INT         NULL,
  available      INT         NULL
)
  ENGINE = InnoDB
  CHARSET = utf8;

CREATE TABLE t_type
(
  id   INT AUTO_INCREMENT
    PRIMARY KEY,
  name VARCHAR(50) NULL
)
  ENGINE = InnoDB
  CHARSET = utf8;

CREATE TABLE t_user
(
  id              INT AUTO_INCREMENT
    PRIMARY KEY,
  email           VARCHAR(50)  NULL,
  password        VARCHAR(50)  NULL,
  available       INT          NULL,
  activation_code VARCHAR(50)  NULL,
  company         VARCHAR(100) NULL,
  company_address VARCHAR(200) NULL,
  company_type    VARCHAR(100) NULL
)
  ENGINE = InnoDB
  CHARSET = utf8;

