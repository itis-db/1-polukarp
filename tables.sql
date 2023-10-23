create table
    if not exists activity (
        activityid integer not null constraint pk_activity primary key,
        parentid integer,
        activitytypeid integer not null constraint fk_activitytype_activity references activitytype,
        name text not null,
        areaid integer
    );

create table
    if not exists activitytype (
        activitytypeid integer not null constraint pk_activitytype primary key,
        name text not null,
        sysname text not null
    );

create table
    if not exists program (
        activityid integer not null constraint pk_program primary key constraint fk_program_activity references activity
    );

create table
    if not exists subprogram (
        activityid integer not null constraint pk_subprogram primary key constraint fk_subprogram_activity references activity
    );

create table
    if not exists project (
        activityid integer not null constraint pk_project primary key constraint fk_project_activity references activity
    );

create table
    if not exists area (
        areaid integer not null constraint pk_area primary key,
        name text not null
    );

create table
    if not exists contract (
        activityid integer not null constraint pk_contract primary key constraint fk_contract_activity references activity,
        areaid integer not null,
        constraint fk_contract_area foreign key (areaid) references area
    );

create table
    if not exists point (
        activityid integer not null constraint pk_point primary key constraint fk_point_activity references activity
    );