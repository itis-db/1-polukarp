-- 1 Уровень

SELECT
    p.activityid,
    sp.activityid,
    pr.activityid,
    c.activityid
FROM program p
    JOIN subprogram sp ON p.activityid = sp.activityid
    JOIN project pr ON sp.activityid = pr.activityid
    JOIN contract c ON pr.activityid = c.activityid;

-- 2 Уровень

SELECT
    p.activityid,
    sp.activityid,
    a.areaid,
    pr.activityid,
    c.activityid,
FROM program p
    JOIN subprogram sp ON p.activityid = sp.activityid
    JOIN area a ON sp.activityid = a.areaid
    JOIN project pr ON a.areaid = pr.activityid
    JOIN contract c ON pr.activityid = c.activityid;

-- 3 Уровень

SELECT
    p.activityid,
    p.name AS program_name,
    sp.activityid,
    sp.name AS sub_program_name,
    a.areaid,
    a.name AS area_name,
    pr.activityid,
    pr.name AS project_name,
    ktp.activityid AS project_kt_activityid,
    ktp.name AS project_kt_name,
    c.activityid AS contract_activityid,
    c.name AS contract_name,
    ktc.activityid AS contract_kt_activityid,
    ktc.name AS contract_kt_name
FROM program p
    JOIN subprogram sp ON p.activityid = sp.activityid
    JOIN area a ON sp.activityid = a.areaid
    JOIN project pr ON a.areaid = pr.activityid
    JOIN point ktp ON pr.activityid = ktp.activityid
    JOIN contract c ON pr.activityid = c.activityid
    JOIN point ktc ON c.activityid = ktc.activityid;