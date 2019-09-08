/* 
    PROG 3113 - Oracle Database Programming
    LABORATORY ACTIVITY #1
 
    OBRA, RHENE RYAN JOHN Q.
    ERT-B
*/

    --v2.0.0a1
    --VERSION CONTROL REPOSITORY at https://github.com/H1NIVyrus/PROJECT-DBM
 
 --TODO #1: Analyze the problem & make a Pseudocode
 --TODO #2: Coding TIMEEE!
 --TODO #3: Run and Test Script
 --TODO #4: Debug
 --TODO #5: Beta Test
 --TODO #6: Refactor and Improve the code
 --TODO #7: Pass the Project
 
 /*
 PSEUDOCODE
 
 PROBLEM:
 -Write and Analyze Basic SQL statements based on the instructions given at Laboratory Activity Sheet in creating database tables.
 
 SOLUTIONS:
 #1: Use CREATE TABLE in problem A
 #2: Use INSERT ALL INTO Table_Name VALUES (value1, value2...) in problem B. Add INTO Table_Name VALUES 
 (value1, value2...) if needed.
 #3: Use SELECT (value1 + value2) AS Column_Name1, (value1 + value2) AS Column_Name2 FROM Table_Name in problem C
 #4: Use ALTER TABLE Table_Name ADD Column_Name1 <insert datatype>...in problem D
 #5: Use UPDATE  TABLE Table_Name SET column1 = value1  WHERE condition in problem E
 #6: Use UPDATE  TABLE Table_Name SET column1 = AVG(value1 + value2) AS new_column_name...in problem F, G and H
 #7: Use SELECT * FROM Table_Name WHERE condition in problem I, J, K, L, N
 */
 
 -- SUMMARY: This script manages the Class Record(ClsRec) Database
 
 -- A. Create a table named ClsRec
 
 CREATE TABLE ClsRec
 (
    "StudNo" NUMBER(8) PRIMARY KEY not null,        
    
    "StudName" VARCHAR2(15) not null,
    
    "YoB" NUMBER(4) not null,
    
    "WrtnWrk1" NUMBER(3) not null,
    
    "WrtnWrk2" NUMBER(3) not null,
    
    "PerfTask1" NUMBER(3) not null,
    
    "PerfTask2" NUMBER(3) not null,
    
    "MajExam" NUMBER(3) not null
 );
 
 -- B. Insert the following records
 
 INSERT ALL
 
    INTO ClsRec VALUES(20165826, 'Aleesha', 2002, 80, 77, 73, 77, 72)
    
    INTO ClsRec VALUES(20022735, 'Mateo', 2000, 90, 81, 100, 92, 100)
    
    INTO ClsRec VALUES(20148812, 'Sophia', 1998, 92, 95, 93, 82, 95)
    
    INTO ClsRec VALUES(20010881, 'Regina', 2002, 91, 96, 82, 90, 86)
    
    INTO ClsRec VALUES(20062515, 'Lloyd', 2001, 85, 94, 89, 79, 70)
    
    INTO ClsRec VALUES(20131203, 'Shayla', 1999, 84, 89, 79, 80, 95)
    
    INTO ClsRec VALUES(20103547, 'Ella Marie', 2001, 76, 97 ,96 ,92 ,93)
    
    INTO ClsRec VALUES(20133697, 'Benito', 2000, 83, 98, 80, 73, 91)
    
    INTO ClsRec VALUES(20046553, 'Rosanna', 2000, 73, 98, 86, 93, 70)
    
    INTO ClsRec VALUES(20130901, 'Giselle', 2001, 80, 100, 70, 86, 98)
    
 SELECT * FROM DUAL;
 
 -- C. Using the SELECT statement, compute the Total WrtnWork and Total PerfTask
 
 SELECT 
 
    "StudNo", 
 
    "StudName", 
 
    ("WrtnWrk1" + "WrtnWrk2") as "Total WrtnWork", 
 
    ("PerfTask1" + "PerfTask2") as "Total PerfTask" 
 
 FROM ClsRec;
 
 -- D. Modify the table by adding new columns
 
 ALTER TABLE ClsRec
    ADD 
    (
        "Age" NUMBER(2),
        
        "Ave WrtnWrk" NUMBER(5,2),
        
        "Ave PerfTask" NUMBER(5,2),
        
        "ClsStnd" NUMBER(5,2),
        
        "Final Grade" NUMBER(5,2)
    );
        
 -- E. Update records by computing AGE of the students
 
 UPDATE ClsRec 
 
    SET "Age" = (2019 - "YoB");

 -- F. Update records by computing the Ave WrtnWrk and Ave PerfTask
 
 UPDATE ClsRec 
    SET 
        "Ave WrtnWrk" = ("WrtnWrk1" + "WrtnWrk2")/2, 
        
        "Ave PerfTask" = ("PerfTask1" + "PerfTask2")/2;

 -- G. Update records by computing the ClsStnd
 
 UPDATE ClsRec 
 
    SET "ClsStnd" = ("Ave WrtnWrk" + "Ave PerfTask")/2;

 -- H. Update the records by computing the Final Grade

 UPDATE ClsRec 
 
    SET "Final Grade" = ("MajExam" + "ClsStnd")/2;

 -- I. Show the records of the students who are adults

 SELECT * FROM ClsRec 
    
    WHERE "Age" >= 18;

 -- J. Show the records of the students who are teenagers
 
 SELECT *  FROM ClsRec 
    
    WHERE "Age" < 18;

 -- K. Show the records of the students who have a passing grade for Ave WrtnWrk
 
 SELECT *  FROM ClsRec 
    
    WHERE "Ave WrtnWrk" >= 75;

-- L. Show the records of the students who have a failing grade for Ave PerfTask
 
 SELECT *  FROM ClsRec 
 
    WHERE "Ave PerfTask" < 75;

-- M. Show the records of the students who have passed on their Final Grade
 
 SELECT *  FROM ClsRec 
 
    WHERE "Final Grade" >= 75;

-- N. Show the records of the students who have failed on their Final Grade
 
 SELECT *  FROM ClsRec 
 
    WHERE "Final Grade" < 75;
        

