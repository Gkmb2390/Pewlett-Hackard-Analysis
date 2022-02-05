# Pewlett-Hackard-Analysis

# Overview
    In the excercise, we are asked to use our SQL skills to determine the number of retiring employees per title and create a table containing that information.  Additionally, we are asked to identify employees who are eligible to participate in a mentorship program, and similarly create a table of these individuals. 

# Findings from Researching the 'Silver Tsunami'

    1. Pewlett Hackard is facing a very serious retirement issue within the company.  Roughly 1/4 of the company has reached a point where they are eligible for retirement.  In the images below pulled from the employees table and retiring titles table, we can easily calculate the number of retirement age individuals within the company.  

## Employee Table Count of Employees    
[IMAGE OF EMPLOYEES COUNT] https://github.com/Gkmb2390/Pewlett-Hackard-Analysis/blob/main/Employees%20count%20file.png
## Retiring Titles Table Sum
[IMAGE OF RETIRING TITLES SUM] https://github.com/Gkmb2390/Pewlett-Hackard-Analysis/blob/main/retiring%20titles%20sum.png

    2. Given the information we gathered in the retiring titles table shown below.   We can see that a large majority of retirement age employees also hold a "Senior" titled position.  Meaning that not only will Pewlett Hackard be facing a shortage of workers - but also they will be losing many of the most experinced individuals within the company.  

## Retiring Titles Grouped by Title
[IMAGE OF RETIRING TITLES] https://github.com/Gkmb2390/Pewlett-Hackard-Analysis/blob/main/retiring%20titles%20senior%20image.png

    3.  Another issue that Pewlett Hackard, should very seriously consider tackling is the cleanliness of their data.  Portions of the excercise necessitated that we clean the databases that Pewlett Hackard had provided us. However since the data was not being regularly cleaned or upkept we were required to take additional steps to ensure that we weren't providing redudant data.  

## Duplicate Employee Files from Retiring Titles Table
[Image of Duplicate employee files] https://github.com/Gkmb2390/Pewlett-Hackard-Analysis/blob/main/duplicate%20entries.png

    4.  Pewlett Hackard needs to very seriously consider either widening their criteria for the Mentorship program or to increase the number of mentees per mentor. Assuming the mentorship program is designed to assist in increasing knowledge of those employees whom have not yet reached retirement age.  Considering there are only 1549 mentors found in the mentorship_eleigibity table, as shown below.  When you consider the number of employees who will be retiring it creates a drastic difference in experiential being allowed to leave without being passed on.

## Mentorship Eligibility Table Count
[IMAGE Of mentorship eligibility count] https://github.com/Gkmb2390/Pewlett-Hackard-Analysis/blob/main/count%20of%20mentorship%20eligibilty.png

#   Summary

    1.  The total number of employees who qualify as members of the 'silver tsunami' totals at 72,458. Pewlett Hackard is assuming that those roles will not all immediately file for retirement, or all leave the company at the same moment.  It would most likely be prudent to create an ordered list of the 'silver tsunami' employees - ordered by hire date from the furthest hire to the most recent hire.  In this way we may be able to more accurately reflect a 'rolling' retirement as would be more natural for a company to experience.  Such a table would likely include all of the information from the unique_titles table, however would need to bring the hire_date data from the employees table; joining the tables on the emp_no field.

    2.  It doesn't appear that there are nearly enough qualified mentors in the company based on the existing crtieria used.  The total number of mentors is only 1,549; while over 72K will be retiring in the near future and the remaining  227,566 create a rather overwhelming number of mentees.  Even assuming that each mentor had 2 mentees, that will still only allow for a little more than 3K people to inherit knowledge from their mentors.  This equates to roughly .01% of the company retaining what could be vital knowledge; by comparison roughly 25% of that knowledge and experience will be leaving shortly.  
        A more efficient plan may be to use the retirement by hire date table that I described in the previous answer to find those workers most likely to retire in the near future and focus on having them mentor their internal successor - which would be selected on merit, or new hire.  