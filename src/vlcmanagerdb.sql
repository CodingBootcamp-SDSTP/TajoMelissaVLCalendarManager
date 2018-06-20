USE vlmanagerdb;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS vlrequests;
DROP TABLE IF EXISTS vlcredits;
CREATE TABLE IF NOT EXISTS employees(
	employeeid VARCHAR(11) NOT NULL PRIMARY KEY,
	lastname VARCHAR(255) NOT NULL,
	firstname VARCHAR(255) NOT NULL,
	middlename VARCHAR(255) NOT NULL,
	position VARCHAR(255) NOT NULL,
	emailadd VARCHAR(255) NOT NULL
);
INSERT INTO employees (employeeid, lastname, firstname, middlename, position, emailadd) VALUES ("2018-000-00", "Tajo", "Ma. Melissa Yvette", "Rosales", "Manager", "mmyrtajo@gmail.com");
INSERT INTO employees (employeeid, lastname, firstname, middlename, position, emailadd) VALUES ("2018-000-01", "Mananghaya", "Linette", "Villavicencio", "Member", "lvmananghaya@gmail.com");
INSERT INTO employees (employeeid, lastname, firstname, middlename, position, emailadd) VALUES ("2018-000-02", "Alano", "Kristine", "Flores", "Member", "kfalano@gmail.com");
CREATE TABLE IF NOT EXISTS vlrequests(
	reqid INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	memberid VARCHAR(11),
	startdate DATETIME NOT NULL,
	enddate DATETIME NOT NULL,
	numberofdays INTEGER,
	reason VARCHAR(255),
	status VARCHAR(255) NOT NULL,
	requestdate TIMESTAMP NOT NULL,
	responsedate TIMESTAMP NOT NULL,
	remarks VARCHAR(255) NOT NULL,
	FOREIGN KEY(memberid) REFERENCES employees(employeeid)
);
INSERT INTO vlrequests(memberid, startdate, enddate, numberofdays, reason, status, requestdate, responsedate, remarks) VALUES (
	(SELECT employeeid FROM employees WHERE employeeid="2018-000-01"), 
	"2018-07-03 08:00:00", "2018-07-06 16:00:00", 3, "Travel", "APPROVED", "2018-05-29 10:20:00", "2018-06-19 01:10:00", "Request is valid");
INSERT INTO vlrequests(memberid, startdate, enddate, numberofdays, reason, status, requestdate, responsedate, remarks) VALUES (
	(SELECT employeeid FROM employees WHERE employeeid="2018-000-02"), 
	"2018-08-01 08:00:00", "2018-08-02 16:00:00", 1, "Check-up", "APPROVED", "2018-06-18 08:30:00", "2018-06-19 10:45:00", "Request is valid");
CREATE TABLE IF NOT EXISTS vlcredits(
	creditid INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	memberid VARCHAR(11),
	numberofleaves INTEGER NOT NULL,
	earnedleave INTEGER,
	update_date TIMESTAMP,
	totalusedleaves INTEGER,
	remainingbalance INTEGER,
	FOREIGN KEY(memberid) REFERENCES employees(employeeid)
);
INSERT INTO vlcredits (memberid, numberofleaves, earnedleave, update_date, totalusedleaves, remainingbalance) VALUES (
	(SELECT employeeid FROM employees WHERE employeeid="2018-000-01"), 15, 7, "2018-06-19 01:10:00", 3, 4);
INSERT INTO vlcredits (memberid, numberofleaves, earnedleave, update_date, totalusedleaves, remainingbalance) VALUES (
	(SELECT employeeid FROM employees WHERE employeeid="2018-000-02"), 15, 7, "2018-06-19 10:45:00", 1, 6);
