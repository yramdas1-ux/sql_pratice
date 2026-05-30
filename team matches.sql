teams 
----

AUS  
ENG  
IND  
PAK  

output 
AUS VS ENG
AUS VS IND
AUS VS PAK
ENG VS IND
ENG VS PAK
IND VS PAK


-- Create Table
CREATE TABLE teams (
    team_name VARCHAR(50)
);

-- Insert Data
INSERT INTO teams (team_name) VALUES
('AUS'),
('ENG'),
('IND'),
('PAK');

select * from teams;

select distinct * from teams a , teams b where a.team_name < b.team_name;

or 

select t1.team_name + 'vs' + t2.team_name as matches 

from teams t1 inner join teams t2 on t1.team_name < t2.team_name;