SELECT * FROM `account`;
/*Question1*/
SELECT Fullname,d.DepartmentID,d.DepartmentName
FROM `account` a
JOIN Department d ON d.DepartmentID=a.DepartmentID
;

/*Question2*/
SELECT AccountID,CreatedDate
FROM `account`
WHERE CreatedDate >'2019-12-20';

/*Question3*/
SELECT *
FROM `account` a
INNER JOIN department d ON d.DepartmentID = a.DepartmentID
ORDER BY a.DepartmentID
;

/*Question4*/
SELECT d.DepartmentID,d.DepartmentName
FROM `account` a
INNER JOIN department d ON d.DepartmentID = a.DepartmentID
GROUP BY d.DepartmentID
HAVING COUNT(a.departmentID) > 3
;
SELECT d.DepartmentID,d.DepartmentName,COUNT(a.DepartmentID) as totalMember
FROM `account` a
INNER JOIN department d ON d.DepartmentID = a.DepartmentID
GROUP BY d.DepartmentID
HAVING totalMember > 3
;
/*Question5*/
SELECT Content,COUNT(q.QuestionID) AS total
FROM `Question` aexamquestion
JOIN Examquestion q ON q.QuestionID=a.QuestionID
GROUP BY q.QuestionID
HAVING total=(SELECT MAX(total) FROM (	SELECT COUNT(q.QuestionID) as total
										FROM `Question` a
										JOIN Examquestion q ON q.QuestionID=a.QuestionID
										GROUP BY q.QuestionID) as tem_table);
                                        
/*Question6*/
SELECT CategoryName,COUNT(q.CategoryID) as total
FROM `Categoryquestion` a
JOIN Question q ON q.CategoryID=a.CategoryID
GROUP BY q.CategoryID;

/*Question7*/
SELECT Content,COUNT(a.examID) as Exam
FROM `Examquestion` a
JOIN Question q ON q.questionID = a.questionID
GROUP BY a.questionID;

/*Question8*/
SELECT q.Content,COUNT(a.QuestionID) as total
FROM `Answer`a
JOIN Question q ON q.QuestionID=a.QuestionID
GROUP BY a.QuestionID
HAVING total=(SELECT MAX(total) FROM( SELECT COUNT(a.QuestionID) as total
						FROM `Answer` a
						JOIN Question q ON q.QuestionID=a.QuestionID
						GROUP BY a.QuestionID) as tem_table);
/*Question9*/
SELECT GroupName,COUNT(g.AccountID) as total
FROM `groupaccount` g
JOIN `Group` a ON a.GroupID=g.GroupID
GROUP BY g.GroupID;

/*Question10*/
/*Question11*/
/*Question12*/
/*Question13*/
SELECT TypeName,COUNT(t.TypeID) as total
FROM `Question` q
JOIN typequestion t ON t.TypeID=q.TypeID
GROUP BY t.TypeID;

/*Question14*/
SELECT a.GroupID,AccountID,GroupName as total
FROM `groupaccount`a
RIGHT JOIN `Group` b ON a.GroupID=b.GroupID
ORDER BY a.GroupID ASC;

/*Question15*/

/*Question16*/










