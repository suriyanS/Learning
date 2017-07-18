# Employee Management
## 1.List All employees :

 ### Query: 

        select name,team,email,doj,salary from employee ;
### Screen Shot:
![alt text](https://raw.githubusercontent.com/suriyanS/Learning/master/1.png "Logo Title Text 1")


## 2.List of employees in team/project :

### Query:

    select e.id,e.name,p.id,p.name,doj,email,salary,e.team,p.teamid from projectemployee pe,employee e,project p where pe. employeeid=e.id AND pe.projectid=p.id ORDER BY `e`.`team` ASC;

### Screen Shot:
![alt text](https://raw.githubusercontent.com/suriyanS/Learning/master/2.png "Logo Title Text 1")

Note: Here 0101 is Employee Id and 301 is Project Id.I have used id & name(Names Only) commonly in all tables so i have mentioned object with column name (Ex: "e.id" e is object of employee and id is column in employee).

## 3.List of employees joined in specific month  :

### Query:
        
        select name,team,email,doj,salary,month from employee order by doj ;
### Screen Shot:
![alt text](https://raw.githubusercontent.com/suriyanS/Learning/master/3.png "Logo Title Text 1")
## 4.Top 5 employees get highest salary  :

### Query:
        
        select name,team,email,doj,salary from employee order by salary desc limit 5;
### Screen Shot:
![alt text](hhttps://raw.githubusercontent.com/suriyanS/Learning/master/4.png "Logo Title Text 1")
## 5.Range wise Salary List:

### Query:

        select name,team,email,doj,salary from employee where salary between 40000 and 70000;
        
        
### Screen Shot:
![alt text](https://raw.githubusercontent.com/suriyanS/Learning/master/5.png "Logo Title Text 1")
