CREATE TABLE Enrollment (
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    studentName VARCHAR(255) NOT NULL,
    class VARCHAR(255) NOT NULL
);

INSERT INTO Enrollment (studentName, class)
VALUES( 'Jane Doe',                 'English')
,(      'Calvin Tran',              'Math')
(       'Nina Chen',                'History');
,(      'Collin Cleveland',         'Biology')
,(      'Anna Fu',                  'Biology')
,(      'Freddy Mintarja',          'Math')
,(      'Carolina Diazgranados',    'Math')
, (     'Andrew Ascone',            'History')
, (     'Yingjie',                  'English');

-- Exercise 1: Join
SELECT * FROM Enrollment LEFT JOIN Students ON Enrollment.id = Students.id;

-- Exercise 2: Join
SELECT * FROM Enrollment INNER JOIN Students ON Enrollment.id = Students.id;
SELECT * FROM Enrollment JOIN Students ON Enrollment.id = Students.id;

-- Exercise 3: Join
SELECT * FROM ENROLLMENT RIGHT JOIN Students ON Enrollment.id = Students.id;

-- Exercise 4: Grouping
-- NEEDS GROUP BY
SELECT COUNT(id), country FROM Students GROUP BY country;

-- Exercise 5: Join
SELECT COUNT(id), country FROM Students GROUP BY country
ORDER BY COUNT(id) DESC;

-- Exercise 6: Join
SELECT COUNT(id), country FROM Students GROUP BY country
HAVING COUNT(id) > 10
ORDER BY COUNT(id) DESC;