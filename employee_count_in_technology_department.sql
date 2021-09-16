SELECT table_name
FROM user_tables
ORDER BY table_name;

DROP TABLE Department;
DROP TABLE Employee;


CREATE TABLE Department(
    ID VARCHAR(25),
    Name VARCHAR(25),
    PRIMARY KEY(ID));
    
INSERT ALL 
INTO Department (ID, Name) VALUES (124, 'Resources')
INTO Department (ID, Name) VALUES (123, 'Technology')
SELECT 1 FROM DUAL;
    
CREATE TABLE Employee(
    ID VARCHAR(25),
    Department_ID VARCHAR(25),
    PRIMARY KEY(ID));
    
INSERT ALL
INTO Employee (ID, Department_ID) VALUES (301, 123)
INTO Employee (ID, Department_ID) VALUES (222, 123)
INTO Employee (ID, Department_ID) VALUES (224, 124)
INTO Employee (ID, Department_ID) VALUES (225, 123)
SELECT 1 FROM DUAL;


SELECT * FROM Department;
SELECT * FROM Employee;

SELECT COUNT(*) FROM Employee e JOIN Department d ON e.Department_ID = d.ID WHERE d.Name = 'Technology';
