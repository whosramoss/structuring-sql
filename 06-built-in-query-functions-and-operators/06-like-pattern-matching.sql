-- SELECT first_name LIKE 'Ma%', first_name
-- FROM memberships;

-- SELECT first_name ILIKE 'ma%', first_name
-- FROM memberships;

-- SELECT first_name LIKE '%a%', first_name
-- FROM memberships;

-- SELECT first_name LIKE '_o%', first_name
-- FROM memberships;

SELECT  first_name
FROM memberships
WHERE first_name LIKE 'J____';


-- % any char
-- _ one char | __ two char