CREATE DATABASE IF NOT EXISTS usersdb;

CREATE USER admintajo@localhost IDENTIFIED WITH 'admintajopw';
GRANT ALL ON usersdb.* to admintajo@localhost;