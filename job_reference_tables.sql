

DROP TABLE IF EXISTS states;

CREATE TABLE states (
state CHAR(30),
abbrev CHAR(2),
PRIMARY KEY (abbrev)
);


INSERT INTO states VALUES ("Alabama","AL");
INSERT INTO states VALUES ("Alaska","AK");
INSERT INTO states VALUES ("Arizona","AZ");
INSERT INTO states VALUES ("Arkansas","AR");
INSERT INTO states VALUES ("California","CA");
INSERT INTO states VALUES ("Colorado","CO");
INSERT INTO states VALUES ("Connecticut","CT");
INSERT INTO states VALUES ("Delaware","DE");
INSERT INTO states VALUES ("Florida","FL");
INSERT INTO states VALUES ("Georgia","GA");
INSERT INTO states VALUES ("Hawaii","HI");
INSERT INTO states VALUES ("Idaho","ID");
INSERT INTO states VALUES ("Illinois","IL");
INSERT INTO states VALUES ("Indiana","IN");
INSERT INTO states VALUES ("Iowa","IA");
INSERT INTO states VALUES ("Kansas","KS");
INSERT INTO states VALUES ("Kentucky","KY");
INSERT INTO states VALUES ("Louisiana","LA");
INSERT INTO states VALUES ("Maine","ME");
INSERT INTO states VALUES ("Maryland","MD");
INSERT INTO states VALUES ("Massachusetts","MA");
INSERT INTO states VALUES ("Michigan","MI");
INSERT INTO states VALUES ("Minnesota","MN");
INSERT INTO states VALUES ("Mississippi","MS");
INSERT INTO states VALUES ("Missouri","MO");
INSERT INTO states VALUES ("Montana","MT");
INSERT INTO states VALUES ("Nebraska","NE");
INSERT INTO states VALUES ("Nevada","NV");
INSERT INTO states VALUES ("New Hampshire","NH");
INSERT INTO states VALUES ("New Jersey","NJ");
INSERT INTO states VALUES ("New Mexico","NM");
INSERT INTO states VALUES ("New York","NY");
INSERT INTO states VALUES ("North Carolina","NC");
INSERT INTO states VALUES ("North Dakota","ND");
INSERT INTO states VALUES ("Ohio","OH");
INSERT INTO states VALUES ("Oklahoma","OK");
INSERT INTO states VALUES ("Oregon","OR");
INSERT INTO states VALUES ("Pennsylvania","PA");
INSERT INTO states VALUES ("Rhode Island","RI");
INSERT INTO states VALUES ("South Carolina","SC");
INSERT INTO states VALUES ("South Dakota","SD");
INSERT INTO states VALUES ("Tennessee","TN");
INSERT INTO states VALUES ("Texas","TX");
INSERT INTO states VALUES ("Utah","UT");
INSERT INTO states VALUES ("Vermont","VT");
INSERT INTO states VALUES ("Virginia","VA");
INSERT INTO states VALUES ("Washington","WA");
INSERT INTO states VALUES ("West Virginia","WV");
INSERT INTO states VALUES ("Wisconsin","WI");
INSERT INTO states VALUES ("Wyoming","WY");


DROP TABLE IF EXISTS countries;

CREATE TABLE countries (
country VARCHAR(40),
continent VARCHAR(30),
PRIMARY KEY (country)
); 

INSERT INTO countries VALUES("United States","North America");


DROP TABLE IF EXISTS schools;

CREATE TABLE schools (
school_id INT AUTO_INCREMENT,
school_name VARCHAR(60),
PRIMARY KEY (school_id)
);

INSERT INTO schools VALUES(NULL,"NYU");
INSERT INTO schools VALUES(NULL,"BC");
INSERT INTO schools VALUES(NULL,"MIT");
INSERT INTO schools VALUES(NULL,"GWU");
INSERT INTO schools VALUES(NULL,"Georgetown");
INSERT INTO schools VALUES(NULL,"Harvard");
INSERT INTO schools VALUES(NULL,"Columbia");
INSERT INTO schools VALUES(NULL,"USC");
INSERT INTO schools VALUES(NULL,"Stanford");
INSERT INTO schools VALUES(NULL,"Dartmouth");
INSERT INTO schools VALUES(NULL,"UCLA");
INSERT INTO schools VALUES(NULL,"UPenn");


-- The below would be used if I had a script to auto-fill the school field. So, schools is no longer a reference table.
-- LOAD DATA LOCAL INFILE 'jobs_US_univ_scrubbed.csv' INTO TABLE schools FIELDS TERMINATED BY ',';


DROP TABLE IF EXISTS job_types;

CREATE TABLE job_types (
type_id INT AUTO_INCREMENT,
job_type VARCHAR(20),
PRIMARY KEY (type_id)
);

INSERT INTO job_types VALUES(1,"Full-time");
INSERT INTO job_types VALUES(2,"Part-time");
INSERT INTO job_types VALUES(3,"Internship");
INSERT INTO job_types VALUES(4,"Contract");
INSERT INTO job_types VALUES(5,"Temporary");


