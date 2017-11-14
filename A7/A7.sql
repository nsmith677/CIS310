--65
SELECT	BOOK_TITLE, BOOK_COST, BOOK_YEAR
FROM	BOOK

--66
SELECT	PAT_FNAME, PAT_LNAME
FROM	PATRON

--67
SELECT	CHECK_NUM, CHECK_OUT_DATE, CHECK_DUE_DATE
FROM	CHECKOUT

--68
SELECT	BOOK_NUM, BOOK_TITLE, BOOK_YEAR
FROM	BOOK

--69
SELECT DISTINCT BOOK_YEAR
FROM	BOOK

--70
SELECT	DISTINCT BOOK_SUBJECT
FROM	BOOK

--71
SELECT	BOOK_NUM, BOOK_TITLE, BOOK_COST
FROM	BOOK

--72
SELECT	CHECK_NUM, BOOK_NUM, PAT_ID, CHECK_OUT_DATE, CHECK_DUE_DATE
FROM	CHECKOUT
ORDER BY	CHECK_OUT_DATE DESC

--73
SELECT	BOOK_TITLE, BOOK_YEAR, BOOK_SUBJECT
FROM	BOOK
ORDER BY	BOOK_SUBJECT ASC, BOOK_YEAR DESC, BOOK_TITLE ASC

--74
SELECT	BOOK_NUM, BOOK_TITLE, BOOK_YEAR
FROM	BOOK
WHERE	BOOK_YEAR = '2012'

--75
SELECT	BOOK_NUM, BOOK_TITLE, BOOK_YEAR
FROM	BOOK
WHERE	BOOK_SUBJECT = 'Database'

--76
SELECT	CHECK_NUM, BOOK_NUM, CHECK_OUT_DATE
FROM	CHECKOUT
WHERE	CHECK_OUT_DATE < '04-05-2015'

--77
SELECT	BOOK_NUM, BOOK_TITLE, BOOK_YEAR
FROM	BOOK
WHERE	BOOK_YEAR > 2013 AND BOOK_SUBJECT = 'PROGRAMMING'

--78
SELECT	BOOK_NUM, BOOK_TITLE, BOOK_YEAR, BOOK_SUBJECT, BOOK_COST
FROM	BOOK
WHERE	BOOK_SUBJECT IN('MIDDLEWARE', 'CLOUD') AND
		BOOK_COST > 70

--79
SELECT	AU_ID, AU_FNAME, AU_LNAME, AU_BIRTHYEAR
FROM	AUTHOR
WHERE	AU_BIRTHYEAR BETWEEN 1980 AND 1989

--80
SELECT	BOOK_NUM, BOOK_TITLE, BOOK_YEAR
FROM	BOOK
WHERE	BOOK_TITLE LIKE '%DATABASE%'

--81
SELECT	PAT_ID, PAT_FNAME, PAT_LNAME
FROM	PATRON
WHERE	PAT_TYPE = 'STUDENT'

--82
SELECT	PAT_ID, PAT_FNAME, PAT_LNAME, PAT_TYPE
FROM	PATRON
WHERE	PAT_LNAME LIKE 'C%'

--83
SELECT	AU_ID, AU_FNAME, AU_LNAME
FROM	AUTHOR
WHERE	AU_BIRTHYEAR IS NULL

--84
SELECT	AU_ID, AU_FNAME, AU_LNAME
FROM	AUTHOR
WHERE	AU_BIRTHYEAR IS NOT NULL

--85
SELECT	CHECK_NUM, BOOK_NUM, PAT_ID, CHECK_OUT_DATE, CHECK_DUE_DATE
FROM	CHECKOUT
WHERE	CHECK_IN_DATE IS NULL
ORDER BY BOOK_NUM

--86
SELECT	AU_ID, AU_FNAME, AU_LNAME, AU_BIRTHYEAR
FROM	AUTHOR
ORDER BY	AU_BIRTHYEAR DESC, AU_LNAME ASC

--87
SELECT	COUNT(*) AS [NUMBER OF BOOKS]
FROM	BOOK


--88
SELECT	COUNT(DISTINCT BOOK_SUBJECT) AS [NUMBER OF SUBJECTS]
FROM	BOOK

--89
SELECT	COUNT(BOOK_NUM) AS [AVAILABLE BOOKS]
FROM	BOOK
WHERE	PAT_ID IS NULL

--90
SELECT	MAX(BOOK_COST) AS [MOST EXPENSIVE]
FROM	BOOK

--91
SELECT	MIN(BOOK_COST) AS [LEAST EXPENSIVE]
FROM	BOOK

--92
SELECT	COUNT(DISTINCT PAT_ID) AS [DIFFERENT PATRONS]
FROM	CHECKOUT

--93
SELECT	BOOK_SUBJECT, COUNT(BOOK_SUBJECT) AS [BOOK IN SUBJECT]
FROM	BOOK
GROUP BY	BOOK_SUBJECT
ORDER BY	[BOOK IN SUBJECT] DESC, BOOK_SUBJECT ASC

--94
SELECT	AU_ID, COUNT(BOOK_NUM) AS [BOOKS WRITTEN]
FROM	WRITES
GROUP BY	AU_ID
ORDER BY	[BOOKS WRITTEN] DESC, AU_ID ASC

--95
SELECT	SUM(BOOK_COST) AS [LIBRARY VALUE]
FROM	BOOK
	