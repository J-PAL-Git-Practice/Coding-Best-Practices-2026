* ------------------------------------------------------------------------------------------------ *
*           RST 2025 Data Coding Best Practices Exercise - Data Cleaning                         *
*                                                                                                  *
*                                                                                                  *
* ------------------------------------------------------------------------------------------------ *

version 16
set more off

/* 1. Rename and label variables
The end_aser_read_* and end_aser_math_* variables are not labeled, and are not very intuitively named. Rename the ones ending in a number, and label all the variables.*/




/* 2. Encode and label values of categorical variables
The “base_standard” variable is currently a numeric variable, but because it is a grade level we want to treat it as a discrete factor as opposed to a continuous numeric variable. Encode it, but then label the values as “first standard”, “second standard”, etc., so that new users of the dataset understand what’s going on. */



/* 3. Recode missing values
In this survey’s context, there was only one reason that data may have been missing, and so there is only one code for missing data (-222). For the fathers_occupation variable, let’s pretend that half of the respondents that we have missing data for didn’t answer, a quarter didn’t know, and a quarter were missing when that question was asked. Recode the missing values to reflect this distribution! */



/* 4. Generate a new attendance variable
The atten_jan and atten_dec variables note the days that the student was absent in January and December, respectively. We already have variables for overall count, but we want to create new variables that count the number of absences in the first 15 days of each month. Use string methods to create a new variable out of these two that tracks that information. */



/* 5. Generate a new above median attendance variable
The PIs want to conduct heterogeneous treatment effects based on baseline attendance level. Using the baseline days missed variable. create a new variable that marks whether a student is above median attendance overall (combined over the two months). Make sure to do it in a way that if new data is added to the dataset, or if the sample changes, the code can be run and the variable will still be valid! */



