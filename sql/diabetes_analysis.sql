
CREATE TABLE diabetes (
    pregnancies INT,
    glucose DECIMAL(6,2),
    blood_pressure DECIMAL(6,2),
    bmi DECIMAL(6,2),
    age INT,
    outcome INT
);


BULK INSERT diabetes
FROM 'C:\temp\diabetes.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);


DROP TABLE diabetes;
 

CREATE TABLE diabetes (
    pregnancies INT,
    glucose DECIMAL(6,2),
    blood_pressure DECIMAL(6,2),
    bmi DECIMAL(6,2),
    age INT,
    outcome VARCHAR(20)
);


BULK INSERT diabetes
FROM 'C:\temp\diabetes.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);


select * from diabetes


drop table diabetes


CREATE TABLE diabetes (
    pregnancies INT,
    glucose DECIMAL(6,2),
    blood_pressure DECIMAL(6,2),
    bmi DECIMAL(6,2),
    age INT,
    outcome VARCHAR(20)
);


BULK INSERT diabetes
FROM 'C:\temp\diabetes.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0d0a'
);


select top 5 * from diabetes

DROP TABLE diabetes;

CREATE TABLE diabetes (
    pregnancies INT,
    glucose DECIMAL(6,2),
    blood_pressure DECIMAL(6,2),
    skin_thickness DECIMAL(6,2),
    insulin DECIMAL(8,2),
    bmi DECIMAL(6,2),
    diabetes_pedigree DECIMAL(8,4),
    age INT,
    outcome VARCHAR(20)
);


BULK INSERT diabetes
FROM 'C:\temp\diabetes.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0d0a'
);


SELECT * FROM diabetes;


--Step 1 - Core KPIs
SELECT
     round(avg(glucose), 2) as avg_glucose,
     round(avg(insulin), 2) as avg_insulin,
     round(avg(bmi), 2) as avg_bmi,
     round(avg(age), 2) as avg_age,
     count(outcome) as ttl_outcome
FROM
     diabetes
     where outcome = 1

-- Step 2 - Glucose level
select
    case
     when glucose >70 and glucose <120 then 'normal range'
     when glucose <70 then 'hypoglycemia'
     when glucose >120 and glucose < 125 then 'prediabetic state'
     else 'diabetic state'
    end as glucose_level
from diabetes


-- Step 3 - bmi/diabetes correlation
select 
    case
     when bmi<=18.5 then 'underweight'
     when bmi > 18.5 and bmi < 24.9 then 'normal weight'
     when bmi >= 25 and bmi < 29.9 then 'overweight'
     else 'diabetes risk'
    end as bmi_diab_corr
from diabetes



-- Core KPIs that contribute to the diabetes type 2 (Tasin et al., 2022)

-- Analysed glucose levels and their correlation to diabetes development

-- Analysed BMI levels and their correlation to diabetes development




















