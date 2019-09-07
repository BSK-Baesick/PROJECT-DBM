/* 
ORACLE DATABASE PROGRAMMING (PROG 3113)
 LABORATORY ACTIVITY #1
 
 BALUBAR, MATTHEW JOHANNES C.
 ERT-B
 */
 
 --TO-DO #1: Analyze the problem & make a Pseudocode
 --TO-DO #2: Coding TIMEEE!
 --TO-DO #3: Run and Test Script
 --TO-DO #4: Debug
 --TO-DO #5: Beta Test
 --TO-DO #6: Refactor and Improve the code
 --TO-DO #7: Pass the project
 
 /*
 PSEUDOCODE
 
 PROBLEM:
 -Write and Analyze Basic SQL statements based on the given Laboratory Activity Sheet in creating database tables.
 
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
        StudNo number(8) not null,
        StudName varchar2(15) not null,
        YoB number(4) not null,
        WrtnWrk1 number(3) not null,
        WrtnWrk2 number(3) not null,
        PerfTask1 number(3) not null,
        PerfTask2 number(3) not null,
        MajExam number(3) not null,
        PRIMARY KEY(StudNo) 
 );
 
 -- B. Insert the following records
 
 INSERT ALL
 
    INTO ClsRec (StudNo, StudName, YoB, WrtnWrk1, WrtnWrk2, PerfTask1, PerfTask2, MajExam)
        VALUES (20165826, 'Aleesha', 2002, 80, 77, 73, 77, 72)
 
    INTO ClsRec (StudNo, StudName, YoB, WrtnWrk1, WrtnWrk2, PerfTask1, PerfTask2, MajExam)
        VALUES (20022735, 'Mateo', 2000, 90, 81, 100, 92, 100)
 
    INTO ClsRec(StudNo, StudName, YoB, WrtnWrk1, WrtnWrk2, PerfTask1, PerfTask2, MajExam)
         VALUES (20148812, 'Sofia', 1998, 92, 95, 93, 82, 95)
 
    INTO ClsRec(StudNo, StudName, YoB, WrtnWrk1, WrtnWrk2, PerfTask1, PerfTask2, MajExam)
        VALUES (20010881, 'Regina', 2002, 91, 96, 82, 90, 86)
 
    INTO ClsRec (StudNo, StudName, YoB, WrtnWrk1, WrtnWrk2, PerfTask1, PerfTask2, MajExam)
        VALUES (20062515, 'Llyod', 2001, 85, 94, 89, 79, 70)
 
    INTO ClsRec (StudNo, StudName, YoB, WrtnWrk1, WrtnWrk2, PerfTask1, PerfTask2, MajExam)
         VALUES (20131203, 'Shayla', 1999, 84, 89, 79, 80, 95)
 
    INTO ClsRec (StudNo, StudName, YoB, WrtnWrk1, WrtnWrk2, PerfTask1, PerfTask2, MajExam)
        VALUES (20103547, 'Ella Marie', 2001, 76, 97, 96, 92, 93)
 
    INTO ClsRec (StudNo, StudName, YoB, WrtnWrk1, WrtnWrk2, PerfTask1, PerfTask2, MajExam)
        VALUES (20133697, 'Benito', 2000, 83, 98, 80, 73, 91)
 
    INTO ClsRec (StudNo, StudName, YoB, WrtnWrk1, WrtnWrk2, PerfTask1, PerfTask2, MajExam)
        VALUES (20046553, 'Rosanna', 2000, 73, 98, 86, 93, 70)
 
    INTO ClsRec (StudNo, StudName, YoB, WrtnWrk1, WrtnWrk2, PerfTask1, PerfTask2, MajExam)
         VALUES (20130901, 'Gizelle', 2001, 80, 100, 70, 86, 98)
 
 SELECT * FROM dual;
 
 -- C. Using the SELECT statement, compute the Total WrtnWork and Total PerfTask
 
 SELECT 
    StudNo, 
    StudName, 
    (WrtnWrk1 + WrtnWrk2) AS TotalWrtnWork, 
    (PerfTask1 + PerfTask2) AS TotalPerfTask 
    
 FROM ClsRec;
 
 -- D. Modify the table by adding new columns
 
 ALTER TABLE ClsRec
 
    ADD
        Age number(2) not null,
        Ave WrtnWrk number(5, 2) not null,
        Ave PerfTask number(5, 2) not null,
        ClsStnd number(5, 2) not null,
        Final Grade number(5, 2) not null;
        
-- E. Update the records by computing the age of students

 UPDATE  TABLE ClsRec
    SET Age  
        WHERE Age = (2019 - YoB);
        

