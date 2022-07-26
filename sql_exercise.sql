-- Primeira

SELECT users.*, cities.name as "cityName" FROM users JOIN cities 
ON 
cities.id = users."cityId"
WHERE 
cities.name ILIKE 'Rio de Janeiro';

-- Segunda

SELECT testimonials.message, u1.name AS writer, u2.name AS recipient 
FROM testimonials 
JOIN users u1 ON u1.id = testimonials."writerId" 
JOIN users u2 ON u2.id = testimonials."recipientId";

--Terceira

SELECT users.id AS "userId", users.name AS name, courses.name AS course, schools.name AS school, educations."endDate" 
FROM educations 
JOIN users ON users.id = educations."userId" 
JOIN courses ON courses.id = educations."courseId" 
JOIN schools ON schools.id = educations."schoolId" 
WHERE educations.status LIKE 'finished' AND users.id = 30;

--Quarta

SELECT users.id AS "userId", users.name AS name, roles.name AS role, companies.name AS company, experiences."startDate" 
FROM experiences 
JOIN users ON users.id = experiences."userId" 
JOIN roles ON roles.id = experiences."roleId" 
JOIN companies ON companies.id = experiences."companyId" 
WHERE experiences."endDate" IS null AND users.id = 50;
