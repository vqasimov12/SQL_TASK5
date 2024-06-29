GO
USE Library
GO

--TASK1

--SELECT P.Id AS PublisherId, P.[Name] AS PublisherName, MIN(B.Pages) AS MinPages 
--FROM Books AS B 
--INNER JOIN Press AS P ON P.Id = B.Id_Press
--GROUP BY P.Id, P.[Name]
--ORDER BY MinPages



--TASK 2

--SELECT P.[Name] AS PublisherName,AVG(B.Pages) AS AvgPages
--FROM Books AS B
--INNER JOIN Press AS P ON P.Id = B.Id_Press
--GROUP BY P.[Name]
--HAVING AVG(B.Pages) > 100
--ORDER BY AvgPages


--TASK 3

--SELECT P.[Name] AS PublisherName, SUM(B.Pages) AS TotalPages
--FROM Books AS B
--INNER JOIN Press AS P ON P.Id = B.Id_Press
--WHERE P.[Name] LIKE '%BHV%' OR P.[Name] LIKE '%BINOM%'
--GROUP BY P.[Name]
--ORDER BY TotalPages


--TASK 4

--SELECT  S.FirstName,SC.DateOut,B.[Name]
--FROM Books AS B
--INNER JOIN S_Cards AS SC ON SC.Id_Book = B.Id
--INNER JOIN Students AS S ON S.Id=SC.Id_Student 
--WHERE SC.DateOut>'1/1/2001' AND SC.DateOut<SYSDATETIME()

--TASK 5

--SELECT *
--FROM Students AS S
--INNER JOIN S_Cards AS SC ON SC.Id_Student = S.Id
--INNER JOIN Books AS B ON B.Id = SC.Id_Book 
--INNER JOIN Authors AS A ON A.Id = B.Id_Author
--WHERE A.FirstName LIKE '%Olga%' 
--  AND A.LastName LIKE '%Kokoreva%' 
--  AND B.[Name] LIKE '%Windows 2000 registry%'
--  AND SC.DateIn IS NULL



--TASK 6

--SELECT A.Id, A.FirstName, A.LastName, AVG(B.Pages) AS AveragePages
--FROM Authors AS A
--INNER JOIN Books AS B ON A.Id = B.Id_Author
--GROUP BY A.Id, A.FirstName, A.LastName
--HAVING AVG(B.Pages) > 600
--ORDER BY AveragePages


--TASK 7

--SELECT P.Id,P.[Name] ,SUM(B.Pages) AS SumPages
--FROM Press AS P
--INNER JOIN Books AS B ON P.Id = B.Id_Press
--GROUP BY P.Id,P.[Name]
--HAVING SUM(B.Pages) > 700
--ORDER BY SumPages
