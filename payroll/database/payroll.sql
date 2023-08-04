CREATE TABLE employee (emp_id int(10) NOT NULL AUTO_INCREMENT,name varchar(20) NOT NULL,fname varchar(20) NOT NULL,gender varchar(6) NOT NULL,emp_type varchar(20) NOT NULL,division varchar(30) NOT NULL,deduction int(10) NOT NULL,overtime_hrs int(10) NOT NULL,bonus int(10) NOT NULL,PRIMARY KEY (emp_id))

CREATE TABLE deduction (deduction int NOT NULL AUTO_INCREMENT,medical int(20) NOT NULL,tax int(20) NOT NULL,loans int(20) NOT NULL,gsis int(20) NOT NULL,empl_id int, empl_type varchar(20),PRIMARY KEY (deduction_id) , FOREIGN KEY(empl_id,empl_type) REFERENCES(employee))


CREATE TABLE overtime (
  ot_id int(10) NOT NULL AUTO_INCREMENT,
  rate int(10) NOT NULL,
  empl_id int, empl_type varchar(20) , FOREIGN KEY(empl_id,empl_type) REFERENCES(employee)
  PRIMARY KEY (`ot_id`)
)


CREATE TABLE salary(
  salary_id int(10) NOT NULL AUTO_INCREMENT,
  salary_rate int(10) NOT NULL,
   empl_id int, empl_division varchar(20), FOREIGN KEY(empl_id,empl_division) REFERENCES(employee)
  PRIMARY KEY (salary_id)
)


CREATE TABLE IF NOT EXISTS admin (
  id int(5) NOT NULL AUTO_INCREMENT,
  username varchar(20) NOT NULL,
  password varchar(20) NOT NULL,
  PRIMARY KEY (id)
)






























CREATE TABLE employee (emp_id int(10) NOT NULL AUTO_INCREMENT,name varchar(20),fname varchar(20),gender varchar(6),emp_type varchar(20),division varchar(30),deduction int(10),overtime_hrs int(10),bonus int(10),PRIMARY KEY(emp_id))

CREATE TABLE deduction (deduction_id int NOT NULL AUTO_INCREMENT,medical int(20),tax int(20),loans int(20),gsis int(20),empl_id int, empl_type varchar(20),PRIMARY KEY(deduction_id) , FOREIGN KEY(empl_id,empl_type) REFERENCES(employee))


CREATE TABLE overtime (
  ot_id int(10) NOT NULL AUTO_INCREMENT,
  rate int(10) NOT NULL,
  empl_id int, empl_type varchar(20) , FOREIGN KEY(empl_id,empl_type) REFERENCES(employee)
  PRIMARY KEY (`ot_id`)
)


CREATE TABLE salary(
  salary_id int(10) NOT NULL AUTO_INCREMENT,
  salary_rate int(10) NOT NULL,
   empl_id int, empl_division varchar(20), FOREIGN KEY(empl_id,empl_division) REFERENCES(employee)
  PRIMARY KEY (salary_id)
)


CREATE TABLE IF NOT EXISTS admin (
  id int(5) NOT NULL AUTO_INCREMENT,
  username varchar(20) NOT NULL,
  password varchar(20) NOT NULL,
  PRIMARY KEY (id)
)




























CREATE TABLE employee (emp_id int(10) NOT NULL AUTO_INCREMENT,name varchar(20),fname varchar(20),gender varchar(6),emp_type varchar(20),division varchar(30),deduction int(10),overtime_hrs int(10),bonus int(10),PRIMARY KEY(emp_id));

CREATE TABLE deduction (deduction_id int NOT NULL AUTO_INCREMENT,medical int(20),tax int(20),loans int(20),gsis int(20),empl_id int, empl_type varchar(20),PRIMARY KEY(deduction_id) , FOREIGN KEY(empl_id,empl_type) REFERENCES(employee));


CREATE TABLE overtime (ot_id int(10) NOT NULL AUTO_INCREMENT,rate int(10) NOT NULL,empl_id int, empl_type varchar(20),FOREIGN KEY(empl_id,empl_type) REFERENCES(employee),PRIMARY KEY (`ot_id`));


CREATE TABLE salary(
  salary_id int(10) NOT NULL AUTO_INCREMENT,
  salary_rate int(10) NOT NULL,
   empl_id int, empl_division varchar(20), FOREIGN KEY(empl_id,empl_division) REFERENCES(employee),
  PRIMARY KEY (salary_id)
);


CREATE TABLE IF NOT EXISTS admin (
  id int(5) NOT NULL AUTO_INCREMENT,
  username varchar(20) NOT NULL,
  password varchar(20) NOT NULL,
  PRIMARY KEY (id)
);
