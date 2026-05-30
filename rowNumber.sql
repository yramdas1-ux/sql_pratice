-- Create Table
CREATE TABLE numbers2(
    id INT
);

-- Insert Data
INSERT INTO numbers2(id) VALUES
(0),
(0),
(1),
(1),
(2),
(2);

select id from(
select id,ROW_NUMBER() over( partition by id order by id desc ) as rn from numbers2) a

order by rn,id ;