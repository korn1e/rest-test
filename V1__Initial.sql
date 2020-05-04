create table customerclass(
    id integer primary key,
    description varchar(100) not null
);
insert into customerclass values(1, 'vip');
insert into customerclass values(2, 'promoter');
insert into customerclass values(3, 'red');
insert into customerclass values(4, 'orange');

create table customer(
    id integer primary key,
    firstname varchar(100) not null,
    lastname varchar(100) not null,
    email varchar(200) not null,
    class_id integer not null
);
insert into customer values(0, 'Aji', 'Putra', 'aji_perdana@yahoo.com', 1);
insert into customer values(1, 'Daniel', 'John', 'daniel.john@outlook.com', 2);
insert into customer values(2, 'Eddie', 'Vedder', 'eddie.vedder@gmail.com', 3);
insert into customer values(3, 'Nuno', 'Bettencourt', 'nuno@extreme.com', 4);


create table customerattribute(
    id integer primary key,
    customer_id integer not null,
    fieldtype varchar(200) not null,
    label varchar(200) not null
);
insert into customerattribute values(0, 0, 'flag1', 'information-1');
insert into customerattribute values(1, 0, 'flag2', 'information-2');

insert into customerattribute values(2, 1, 'flag1', 'information-11');
insert into customerattribute values(3, 1, 'flag2', 'information-12');

insert into customerattribute values(4, 2, 'flag1', 'information-21');
insert into customerattribute values(5, 2, 'flag2', 'information-22');

insert into customerattribute values(6, 3, 'flag1', 'information-31');
insert into customerattribute values(7, 3, 'flag2', 'information-32');

create table leadstatus(
    id integer primary key,
    customer_id integer not null,
    leads timestamp not null,
    prospect timestamp,
    customer timestamp
);

insert into leadstatus values(0, 0, '2020-03-01 10:00:00', '2020-03-01 11:00:00', '2020-03-01 20:00:00');
insert into leadstatus values(1, 1, '2020-03-01 10:00:00', '2020-03-01 12:00:00', '2020-03-01 15:00:00');
insert into leadstatus values(2, 2, '2020-03-01 10:00:00', '2020-03-01 13:00:00', '2020-03-01 17:00:00');
insert into leadstatus values(3, 3, '2020-03-01 10:00:00', '2020-03-01 14:00:00', '2020-03-01 19:00:00');






