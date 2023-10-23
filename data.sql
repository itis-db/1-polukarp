INSERT INTO
    activitytype (activitytypeid, name, sysname)
VALUES (1, 'Программа', 'Program'), (
        2,
        'Подпрограмма',
        'SubProgram'
    ), (3, 'Проект', 'Project'), (4, 'Контракт', 'Contract'), (5, 'КТ', 'Point');

INSERT INTO
    activity (
        activityid,
        parentid,
        activitytypeid,
        name,
        areaid
    )
VALUES (1, null, 1, 'Программа 1', null), (
        2,
        1,
        2,
        'Подпрограмма 1.1',
        null
    ), (
        3,
        1,
        2,
        'Подпрограмма 1.2',
        null
    ), (4, 2, 3, 'Проект 1.1', null), (5, 2, 3, 'Проект 1.2', null), (6, 3, 3, 'Проект 1.3', null), (7, null, 1, 'Программа 2', null), (
        8,
        7,
        2,
        'Подпрограмма 2.1',
        null
    ), (
        9,
        7,
        2,
        'Подпрограмма 2.2',
        null
    ), (10, 8, 3, 'Проект 2.1', null), (11, 8, 3, 'Проект 2.2', null), (12, 11, 3, 'Проект 2.2.1', null), (13, 11, 3, 'Проект 2.2.2', null), (14, 4, 4, 'Контракт 1.1', 101), (15, 5, 4, 'Контракт 1.2', 102), (16, 16, 4, 'Контракт 1.2.1', 103), (17, 14, 5, 'КТ 1.1.1', null), (18, 15, 5, 'КТ 1.2.1', null), (19, 15, 5, 'КТ 1.2.2', null), (20, 16, 5, 'КТ 1.2.1.1', null);

INSERT INTO
    contract (activityid, areaid)
VALUES (14, 101), (15, 102), (16, 103)

INSERT INTO area (areaid, name)
VALUES (101, 'Area 1'), (102, 'Area 2'), (103, 'Area 3');