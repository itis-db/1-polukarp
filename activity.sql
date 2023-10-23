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
    c.activityid
FROM program p
    JOIN subprogram sp ON p.activityid = sp.activityid
    JOIN area a ON sp.activityid = a.areaid
    JOIN project pr ON a.areaid = pr.activityid
    JOIN contract c ON pr.activityid = c.activityid;

-- 3 Уровень

SELECT
    p.activityid,
    sp.activityid,
    a.areaid,
    pr.activityid,
    ktp.activityid AS project_kt_activityid,
    c.activityid AS contract_activityid,
    ktc.activityid AS contract_kt_activityid
FROM program p
    JOIN subprogram sp ON p.activityid = sp.activityid
    JOIN area a ON sp.activityid = a.areaid
    JOIN project pr ON a.areaid = pr.activityid
    JOIN point ktp ON pr.activityid = ktp.activityid
    JOIN contract c ON pr.activityid = c.activityid
    JOIN point ktc ON c.activityid = ktc.activityid;