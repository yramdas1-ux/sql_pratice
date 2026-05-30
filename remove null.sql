input
-------
ID    NAME  LOC

1     NULL NULL
NULL  A     NULL
NULL  NULL  BAN

 
output

ID NAME LOC

1     A         BAN

CREATE TABLE t1 (
    id VARCHAR(10),
    name VARCHAR(50),
    loc VARCHAR(50)
);

INSERT INTO t1 VALUES ('1', NULL, NULL);

INSERT INTO t1 VALUES (NULL, 'A', NULL);

INSERT INTO t1 VALUES (NULL, NULL, 'BAN');

select * from t1;

select max(id) as id,max(name) as name,max(loc) as loc from t1;

or 

select 

max(case when id is not null then ID end ) as ID,
max(case when name is not null then name end ) as name,
max(case when loc is not null then loc end ) as loc
from t1;