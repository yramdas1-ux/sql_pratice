
 Given a table tree, id is identifier of the tree node and p_id is its parent
node's id.
+----+------+
| id | p_id |
+----+------+
| 1 | null |
| 2 | 1 |
| 3 | 1 |
| 4 | 2 |
| 5 | 2 |
+----+------+
Each node in the tree can be one of three types:
Leaf: if the node is a leaf node.
Root: if the node is the root of the tree.
Inner: If the node is neither a leaf node nor a root node.
Write a query to print the node id and the type of the node. Sort your output by
the node id. The result for the above sample is:
+----+------+
| id | Type |
+----+------+
| 1 | Root |
| 2 | Inner|
| 3 | Leaf |
| 4 | Leaf |
| 5 | Leaf |



       1 
	   
    2    3
	
4     5


-- Create Table
CREATE TABLE tree (
    id INT,
    p_id INT
);

-- Insert Data
INSERT INTO tree (id, p_id) VALUES
(1, NULL),
(2, 1),
(3, 1),
(4, 2),
(5, 2);

select * from tree;

SELECT
    id,
    CASE
        WHEN p_id IS NULL THEN 'Root'
        WHEN id IN (SELECT DISTINCT p_id FROM tree
            WHERE p_id IS NOT NULL
        ) THEN 'Inner'
        ELSE 'Leaf'
    END AS Type
FROM tree;


from tree;