SELECT * FROM `account`;

/* QUESTION 1*/

/* QUESTION 2*/
SELECT * FROM `department` ORDER BY departmentID ASC;

/* QUESTION 3*/
SELECT *
FROM `Department` WHERE DepartmentID= 5;

/* QUESTION 4*/
SELECT Fullname,LENGTH(Fullname) FROM `account`;
SELECT MAX(LENGTH(Fullname)) FROM `account`;
SELECT * 
FROM `account`
WHERE LENGTH(Fullname)=(SELECT MAX(LENGTH(Fullname) )FROM `account`);

/* QUESTION 5*/
SELECT * 
FROM `account`
WHERE LENGTH(Fullname)=(SELECT MAX(LENGTH(Fullname) )FROM `account`) AND DepartmentID=3;

/* QUESTION 6*/
SELECT AccountID, CreatedDate
FROM `account`
GROUP BY AccountID
HAVING `CreatedDate`<'2019-12-20';

/* QUESTION 7*/
SELECT questionID,COUNT(AnswerID) AS totalMember
FROM answer
GROUP BY questionID
HAVING totalMember>=4;

/* QUESTION 8*/
   SELECT ExamID,`Code`,Duration,CreatedDate
FROM `exam`
GROUP BY ExamID
HAVING `Duration`>=60 AND `CreatedDate`<'2019-12-20';

/* QUESTION 9*/
SELECT GroupID,GroupName,CreatedDate
FROM `group`
GROUP BY GroupID
HAVING `CreatedDate`>='2021-04-03';

/* QUESTION 10*/
SELECT DepartmentID, COUNT(DepartmentID)
FROM `account`
GROUP BY DepartmentID
HAVING DepartmentID=2;

/* QUESTION 11*/
SELECT FullName
FROM `account`
GROUP BY FullName
HAVING FullName LIKE '%D%o';

/* QUESTION 12*/
DELETE 
FROM     `Account`.exam
WHERE   (SELECT *
FROM exam
GROUP BY ExamID
HAVING CreatedDate<'2019-12-20');


/* QUESTION 13*/
DELETE
FROM Question
WHERE 
/* QUESTION 14*/
UPDATE		`Account`
SET 		FullName='Nguyen Ba Loc',
			Email='loc.nguyenba@vti.com.vn'
WHERE		AccountID= 5
/* QUESTION 15*/




