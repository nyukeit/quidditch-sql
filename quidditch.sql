-- Query 1
SELECT 
	w.lastname AS wizard_lastname, 
	w.firstname AS wizard_firstname, 
    p.role, 
    t.name AS team_name
FROM wizard AS w
JOIN player p ON w.id=wizard_id
JOIN team t ON p.team_id=t.id
ORDER BY
	t.name, p.role, w.lastname, w.firstname;

-- Query 2
SELECT 
	w.lastname AS wizard_lastname, 
	w.firstname AS wizard_firstname, 
    p.role
FROM wizard AS w
JOIN player p ON w.id=wizard_id
WHERE p.role='seeker'
ORDER BY
	w.lastname, w.firstname;

-- Query 3

SELECT
	w.id,
	w.lastname,
	w.firstname
FROM wizard w
LEFT JOIN player p ON w.id=p.wizard_id
WHERE p.wizard_id IS NULL;