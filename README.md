# Pewlett-Hackard-Analysis

## Project Overview
Using SQL, the managers at Pewlett Hackward would like the following tasks completed:

1. Determine the number of retiring employees per title.
2. Identify employees who are eligible to participate in a mentorship program.
3. Summarize the analysis.

## Results
After completing the analysis we can see that:

- A total of 72,458 roles will need filled soon
- There are 7 titles that have employees that will be retiring soon
- The titles with the highest number of retiring employees are Senior Engineer and Senior Staff

![Retiring Titles](/Retiring_Titles.png)

- There are 1,549 employees elibible for the mentorship program which you can see by running a query to pull the data from the mentorship_eligibility table:
![Mentorship Eligibility](/Mentorship_Eligibility.png)



## Challenge Summary
Based on the analysis there are 72,458 employees that will be retiring soon at Pewlett Hackard.  There does not appear to be enough retirement-ready employees in the departments to mentor the next generation of employees.  

Another table that would be useful to see is the mentorship eligibility by title count in order to see which job titles may need more mentors:
Retiring by Title                                                      | Mentorship Eligibility by Title 
:----------------------------------------------------------------:  | :-------------:  
![Retiring Titles](/Retiring_Titles.png)  |  ![Mentorship Titles](/Mentorship_Titles.png)


Two more table that would be useful to see are the retiring count by department and the mentorship eligibility count by department in order to see which departments have the most need for additional mentors:
Retiring by Department                                                      | Mentorship Eligibility by Department  
:----------------------------------------------------------------:  | :-------------:  
![Retiring Departments](/Retiring_Depts.png)  |  ![Mentorship Departments](/Mentorship_Depts.png)
