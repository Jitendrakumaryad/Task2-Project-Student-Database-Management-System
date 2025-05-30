Use student_database;

--- Student Database Management System (1.	Database Setup) 
CREATE TABLE student_table (
    Student_id INT PRIMARY KEY,
    Stu_name TEXT,
    Department TEXT,
    email_id TEXT,
    Phone_no BIGINT, 
    Address TEXT,
    Date_of_birth DATE,
    Gender TEXT,
    Major TEXT,
    GPA DECIMAL(3, 2), 
    Grade TEXT CHECK (Grade IN ('A', 'B', 'C', 'D', 'F')) 
);

--- Student Database Management System (2. Data Entry) 

INSERT INTO student_table (Student_id, Stu_name, Department, email_id, Phone_no, Address, Date_of_birth, Gender, Major, GPA, Grade) VALUES 
(101, 'Ajay', 'IT', 'ajay.sharma@gmail.com', 9876543210, '123, MG Road, Bangalore', '2000-05-15', 'Male', 'Computer Science', 8.5, 'A'), 
(102, 'Priya', 'Finance', 'priya.s@gmail.com', 9988776655, '45, Kor Mangla, Bangalore', '2001-08-22', 'Female', 'Financial Management', 7.2, 'B'),
(103, 'Dev', 'HR', 'dev.p@gmail.com', 9765432109, '78, Sector 10, Delhi', '2000-03-10', 'Male', 'Human Resources', 6.8, 'C'), 
(104, 'Ganesh', 'Technical', 'ganesh.r@gmail.com', 9123456789, '21, Park Street, Kolkata', '1999-11-29', 'Male', 'Mechanical Eng', 9.1, 'A'),
(105, 'Anjali', 'IT', 'anjali.d@gmail.com', 9012345678, '56, South Extension, Chennai', '2002-01-01', 'Female', 'Software Eng', 7.9, 'B'),
(106, 'Rahul', 'Finance', 'rahul.v@gmail.com', 9234567890, '10, Banjara Hills, Hyderabad', '2000-07-07', 'Male', 'Economics', 5.5, 'D'),
(107, 'Sneha ', 'HR', 'sneha.g@gmail.com', 9345678901, '33, Koregaon Park, Pune', '2001-04-19', 'Female', 'Organizational Behavior', 8.0, 'B'),
(108, 'Vikram', 'Technical', 'vikram.k@gmail.com', 9456789012, '88, Anna Nagar, Coimbatore', '1998-09-03', 'Male', 'Electrical Engineering', 4.9, 'F'),
(109, 'Deepa', 'IT', 'deepa.r@gmail.com', 9567890123, '14, Jubilee Hills, Hyderabad', '2000-12-25', 'Female', 'Data Science', 8.8, 'A'),
(110, 'Karan', 'Finance', 'karan.s@gmail.com', 9678901234, '2, Indiranagar, Bangalore', '2001-06-30', 'Male', 'Accounting', 6.2, 'C');

--- Student Database Management System (3.Student Information Retrieval) 

SELECT *
FROM student_table
ORDER BY Grade DESC;

--- Student Database Management System (4.Query for Male Students:) 
  
  SELECT *
FROM student_table
WHERE Gender = 'Male';

--- Student Database Management System (5.Query for Students with GPA less than 5.0) 

SELECT *
FROM student_table
WHERE GPA < 5.0;

--- Student Database Management System (6.Update Student Email and Grade) 
-- -- Student_id 108 (Vikram Kumar).

UPDATE student_table
SET email_id = 'vikram.k@gmail.com',
    Grade = 'C'
WHERE Student_id = 108;

----- Student Database Management System (7.Query for Students with Grade "B")

SELECT
    Stu_name,
    TIMESTAMPDIFF(YEAR, Date_of_birth, CURDATE()) AS Age
FROM student_table
WHERE Grade = 'B';

----- Student Database Management System (8.Grouping and Calculation)
SELECT
    Department,
    Gender,
    AVG(GPA) AS Average_GPA
FROM student_table
GROUP BY Department, Gender
ORDER BY Department, Gender;

----- Student Database Management System (9.Table Renaming)

ALTER TABLE student_table
RENAME TO student_info;

----- Student Database Management System (10.Retrieve Student with Highest GPA)

SELECT Stu_name
FROM student_info
ORDER BY GPA DESC
LIMIT 1;

SELECT * from student_info
