# Pewlett-Hackard Analysis

## Overview

The purpose of this analysis was to learn how to utilize SQL and data modeling techniques in Postgres to obtain information on retiring employees. By creating an ERD, importing data into Postgres, and building tables and joins we were able to produce the desired results. We were able to produce two final deliverables: the first is a table containing the count of titles of current employees who are retiring, the second is a mentorship-eligibility table containing current employees born between Jan 1, 1965 and Dec 31, 1965.

## Results

- From the titles table, we discovered that 29,414 Senior Engineers and 28,254 Senior Staff employees are retiring. In other words, 57,668 senior-level employees will be retiring.

- From the titles table, we also discovered that only 2 managers will be retiring.

<img src="https://github.com/kimcheese33/pewlett_hackard_analysis/blob/main/images/deliv1.png"/>

- From the mentorship-eligibility table we found that there are 1,549 current employees eligible to be mentors.

- From the mentoriship-eligibility table we also found that there were employees eligible to be mentors from every title except manager.


## Summary

In order to address the issue of a large number of employees retiring at the same time, we will need to hire approximately 85,896 roles. Another issue is there are only 1,549 qualified retirement-ready employees available to mentor the next generation of employees. This small number will likely not be enough to prepare younger employees to take over as older employees retire.

Doing some further querying on our mentorship-eligibility table shows that there are no managers eligible to mentor:

  - Query ran:

    <img src="https://github.com/kimcheese33/pewlett_hackard_analysis/blob/main/images/deliv2query.png"/>

  - Result:

  <img src="https://github.com/kimcheese33/pewlett_hackard_analysis/blob/main/images/deliv2.png"/>
  
We could expand the number of eligible mentors by looking for employees who were born between 1963 and 1965:

<img src="https://github.com/kimcheese33/pewlett_hackard_analysis/blob/main/images/expanded_elig.png"/>

By doing this, we can get 38,401 mentors, which can help alleviate the "silver tsunami".
