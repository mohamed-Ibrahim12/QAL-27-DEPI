create database mental_health

--Stress level over employees

select Stress_Level, COUNT(Employee_ID) as Employee_Count
from data22 group by Stress_Level;

--industries that had high risk

select Industry, COUNT(Employee_ID) as High_Stress_Count
from data22 where Stress_Level = 'High'
group by Industry
order by High_Stress_Count desc

-- AVG age according to work location

select Work_Location, AVG(Age) as Avg_Employee_Age
from data22 group by Work_Location order by Avg_Employee_Age desc;


--employees numbers according to every mental health condition

select Mental_Health_Condition, COUNT(Employee_ID) as Employee_Count
from data22 group by Mental_Health_Condition order by Employee_Count desc;

----employees numbers according to every mental health condition

select COUNT(Employee_ID) as Employee_Count
from data22 where Productivity_Change = 'Decrease' AND Satisfaction_with_Remote_Work = 'Unsatisfied';

--number of employees satisfied about remotley work and their productivity increased

select COUNT(Employee_ID) as Employee_Count
from data22 where Productivity_Change = 'Increase' AND Satisfaction_with_Remote_Work = 'satisfied';

-- The level of stress prevalent among males

select Stress_Level, COUNT(Employee_ID) as Count_of_Level from data22
where Gender = 'Male' group by Stress_Level order by Count_of_Level desc;

--type of stress prevalent among males

 select Mental_Health_Condition, COUNT(Employee_ID) as Condition_Count from data22
 where Gender = 'Male' group by Mental_Health_Condition order by Condition_Count desc;

--highest region have poor sleep

SELECT Region, COUNT(Employee_ID) AS Poor_Sleep_Count
FROM data22 WHERE Sleep_Quality = 'Poor' GROUP BY Region ORDER BY Poor_Sleep_Count DESC;
 




