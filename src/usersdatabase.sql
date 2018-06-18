USE vlcalendarmngrdb;

-- DROP TABLE IF EXISTS userslogin;
DROP TABLE IF EXISTS employees;

-- CREATE TABLE users(
-- 	username VARCHAR(8) NOT NULL PRIMARY KEY,
-- 	userlevel VARCHAR(11) NOT NULL,
-- 	password VARCHAR(28) NOT NULL
-- );

INSERT INTO users (username, userlevel, password) VALUES ("mtajo", "manager", "Tajopw824*");
INSERT INTO users (username, userlevel, password) VALUES ("apaminta", "employee", "Pamintahonpw1*");

CREATE TABLE IF NOT EXISTS employees(
	employeeid VARCHAR(11) NOT NULL PRIMARY KEY,
	lastname VARCHAR(255) NOT NULL,
	firstname VARCHAR(255) NOT NULL,
	middlename VARCHAR(255) NOT NULL,
	position VARCHAR(255) NOT NULL,
	status VARCHAR(255) NOT NULL,
	vlcredit INTEGER NOT NULL,
	emailadd VARCHAR(255) NOT NULL
);

INSERT INTO employees (employeeid, lastname, firstname, middlename, position, status, vlcredit, emailadd) VALUES ("2018-000-00", "Tajo", "Ma. Melissa Yvette", "Rosales", "Manager", "Regular", 15, "mmyrtajo@gmail.com");
INSERT INTO employees (employeeid, lastname, firstname, middlename, position, status, vlcredit, emailadd) VALUES ("2018-000-01", "Mananghaya", "Linette", "Villavicencio", "Member", "Regular", 15, "lvmananghaya@gmail.com");
INSERT INTO employees (employeeid, lastname, firstname, middlename, position, status, vlcredit, emailadd) VALUES ("2018-000-02", "Alano", "Kristine", "Flores", "Member", "Regular", 15, "kfalano@gmail.com");
INSERT INTO employees (employeeid, lastname, firstname, middlename, position, status, vlcredit, emailadd) VALUES ("2018-000-03", "Taglucop", "Lindith", "Vargas", "Member", "Regular", 15, "lvtaglucop@gmail.com");
INSERT INTO employees (employeeid, lastname, firstname, middlename, position, status, vlcredit, emailadd) VALUES ("2018-000-04", "Pamintahon", "Anje", "Sagie", "Member", "Regular", 15, "aspamintahon@gmail.com");
INSERT INTO employees (employeeid, lastname, firstname, middlename, position, status, vlcredit, emailadd) VALUES ("2018-000-05", "Bato", "Ryan", "Art", "Member", "Regular", 15, "rabato@gmail.com");
INSERT INTO employees (employeeid, lastname, firstname, middlename, position, status, vlcredit, emailadd) VALUES ("2018-000-06", "Miras", "Adrian", "Mondragon", "Member", "Regular", 15, "ammiras@gmail.com");

CREATE TABLE IF NOT EXISTS vlrequests(
	vlreqid INTEGER NOT NULL PRIMARY KEY,
	memberid VARCHAR(11) FOREIGN KEY,
	startdate VARCHAR(255) NOT NULL,
	enddate VARCHAR(255) NOT NULL,
	numberofdays VARCHAR(255) NOT NULL,
	vlreason VARCHAR(255),
	vlstatus VARCHAR(255) NOT NULL,
	requestdate VARCHAR(255) NOT NULL,
	approvedate VARCHAR(255) NOT NULL,
	remarks VARCHAR(255) NOT NULL
);

INSERT INTO vlrequests(memberid, startdate, enddate, numberofdays, vlreason, vlstatus, requestdate, approvedate, remarks) VALUES (
	(SELECT employeeid FROM employees WHERE employeeid="2018-000-01", "2018-07-03 08:00:00", "2018-07-04 16:00:00", "1", "Personal Reason", "Approved", ""),

);


