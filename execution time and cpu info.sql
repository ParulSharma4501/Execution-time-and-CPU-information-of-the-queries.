MySQL has SQL Profiler which is built into the database server and you can enable/disable via the MySQL client utility.

Before executing any queries you can enable SQL Profiler and it is only for your particular session.
Internally, it creates one profiling table into INFORMATION_SCHEMA database and when you disconnect with MySQL client, it destroys this table.

Step 1 :
Enable SQL Profile at session level:
SET profiling=1;

Step 2 :
Execute sample query:
SELECT *FROM table_one;
SELECT *FROM table_two;

Step 3 :
Check the execution time for each query:
SHOW PROFILES;
 
/*Result*/
Query_ID   Duration    Query
--------------------------------------------------
1          0.00355325  SELECT *FROM table_one
2          0.00051850  SELECT *FROM table_two


Check the execution time for second query only:
SHOW PROFILE FOR QUERY 2;


Check the CPU information for second query only:
SHOW PROFILE CPU FOR QUERY 2;

The Result:
SQL profiler will show you the result table.