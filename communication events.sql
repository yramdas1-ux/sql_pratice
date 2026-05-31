CREATE TABLE communication_events (
    communication_code VARCHAR(20),
    event_type VARCHAR(20)
);
INSERT INTO communication_events VALUES
('com1', 'Sent'),
('com2', 'Open'),
('com3', 'Sent'),
('com1', 'Bounced'),
('com3', 'Bounced'),
('com2', 'Sent'),
('com2', 'Sent'),
('com1', 'Bounced');

select * from communication_events;

select communication_code,
      sum(case when event_type ='sent' then 1 else 0 end ) as sent,
      sum(case when event_type ='open' then 1 else 0 end ) as [open],
      sum(case when event_type ='Bounced' then 1 else 0 end ) as Bounced
      from communication_events 
      group by communication_code ;







