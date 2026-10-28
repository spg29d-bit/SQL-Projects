INSERT INTO call_centre
(Call_ID, Agent_Name, Date, Calls_Handled, AHT, CSAT, Team_Leader, Manager, Shift)

values
(101, 'Prateek','2026-01-01',85,350,92,'Team A','Ayush','Morning'),
(102, 'Rahul','2026-01-01', 75, 390, 88, 'Team B','Nagma','Night'),
(103, 'Simran',	'2026-01-01',70,400	,100,'Team A','Digvijay','Morning'),
(104, 'Priya',	'2026-01-01',65,500,90,	'Team B','Vijay','Afternoon'),
(105, 'Eshan' ,'2026-01-01', 85,438,95,	'Team A','Kartik',	'Evening'),
(106, 'Shreya','2026-01-01', 82	,328,78,'Team B','Nidhi','Morning'),
(107, 'Yash', '2026-01-01',72,358,90,	'Team A','Ankit','Night'),
(108,  'Saumya', '2026-01-01',	70,	379,	94,	'Team B',	'Arun',	'Evening'),
(109,   'Arun',	'2026-01-01',68,562,87,	'Team A',	'Savita',	'Night'),
(110,	'Dhriti',	'2026-01-01',	75,	448,	95,	'Team B',	'Jyoti','Afternoon'),
(111,	'Anjali',	'2026-01-01',	85,	438,	99,	'Team A',	'Chitra',	'Morning'),Call_Id
(112,	'Deepak',	'2026-01-01',	90	,350	,93,	'Team B',	'Nupur','Night');

Select	agent_name
From call_centre
Where CSAT < 80;

Select Agent_name, Calls_handled,CSAT,
CASE	
When CSAT >=95 Then 'EXCELLENT'
When CSAT >=90 THEN 'GOOD'
ELSE 'Need Improvement'
END AS Performance
From call_centre;

SELECT agent_name,
       SUM(calls_handled) AS total_calls
FROM call_centre
GROUP BY agent_name
ORDER BY total_calls DESC;













