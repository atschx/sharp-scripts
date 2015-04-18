#/bin/bash
#init test data

MYSQL="$(which mysql)"
echo $MYSQL
$MYSQL test <<EOF
drop table if exists user;
create table user(id int,name varchar(30))ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into user (id,name) values (1,'张三');
insert into user (id,name) values (2,'李四');
insert into user (id,name) values (3,'王五');
insert into user (id,name) values (4,'赵六');
set character_set_results=utf8;
select * from user;
EOF

