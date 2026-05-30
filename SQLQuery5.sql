city1 city2 distance

bang hyd 100  

hyd pun 200  

hyd bang 100   

pun hyd 200  

hyd mum 200

output

city1 city2 distance

bang hyd 100

hyd pun 200

hyd mum 200

create table city_distance (city1 varchar(8),city2 varchar(8));

alter table city_distance add distance int;


INSERT INTO city_distance (city1, city2, distance) VALUES
('bang', 'hyd', 100),
('hyd', 'pun', 200),
('hyd', 'bang', 100),
('pun', 'hyd', 200),
('hyd', 'mum', 200);

with temp1 as

(
  select case when city1 < city2 then city1 else city2 end  as city1,
       case when city1 < city2 then city2 else city1 end as city2,distance
       
       from city_distance) 

select distinct * from temp1;
