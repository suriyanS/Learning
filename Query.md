# Employee Management
## 1.List All employees :

 ### Query: 

        select name,team,email,doj,salary from employee ;
### Screen Shot:
![alt text](https://raw.githubusercontent.com/suriyanS/Learning/master/1.List%20All%20employees.png "Logo Title Text 1")


## 2.List of employees in team/project :

### Query:

        select name,team,email,doj,salary from employee where team="DBL";
### Screen Shot:
![alt text](https://raw.githubusercontent.com/suriyanS/Learning/master/2.List%20of%20employees%20in%20team.png "Logo Title Text 1")
## 3.List of employees joined in specific month  :

### Query:
        
        select name,team,email,doj,salary from employee where MONTHNAME(doj) ="July" ;
### Screen Shot:
![alt text](https://raw.githubusercontent.com/suriyanS/Learning/master/3.List%20of%20employees%20joined%20in%20specific%20month.png "Logo Title Text 1")
## 4.Top 5 employees get highest salary  :

### Query:
        
        select name,team,email,doj,salary from employee order by salary desc limit 5;
### Screen Shot:
![alt text](https://raw.githubusercontent.com/suriyanS/Learning/master/4.Top%205%20employees%20get%20highest%20salary.png "Logo Title Text 1")
## 5.Range wise Salary List:

### Query:

        select name,team,email,doj,salary from employee where salary between 40000 and 70000;
        
        
### Screen Shot:
![alt text](https://raw.githubusercontent.com/suriyanS/Learning/master/5.Range%20wise%20Salary%20List.png "Logo Title Text 1")
