# ------------------------------------------------------------------------------------------------ #
#            RST 2025 Data Coding Best Practices Exercise - De-identification                      #
#                                                                                                  #
#                                                                                                  #
# ------------------------------------------------------------------------------------------------ #

# Load required libraries
library(dplyr)
# others?

# 1. De-identify direct identifiers:
#  Identify and mask the direct identifiers in the data by replacing them with 
#  the string "REMOVED FOR RESPONDENT PRIVACY"
  
  


  
# 2. Aggregate birth dates:
#  Date of birth can be an indirect identifier. Aggregate date of birth to the 
#  month-year level, and then check the distribution of responses. 
#  If there are still a lot of months with only a few observations, 
#  consider aggregating to ranges of month-years.
  
  
  
  
# 3. Encode the Village variable:
#  Village names are very strong indirect identifiers, but they still contain 
#  helpful information! Encode the village name so that groups can still be 
#  made by village, but you can no longer tell which group is in which village. 
#  Save a crosswalk to an appropriate folder.
  
  
  
  
  
# 4. "Top-code" days missed in school:
#  Some students missed a lot of school in either the baseline or endline 
#  periods! These students may be identifiable by other people in the area 
#  if they are an outlier in the data. Topcode days missed in both the baseline 
#  and endline variables at a reasonable level based on the underlying data. 
#  If you're not sure what this means, check out the hint in the HTML file!






#5. Calculate k-anonymity:
#  We want to make sure that along a number of key indirect identifiers there 
#  are enough observations that no observation is unique -- this will ensure 
#  that the data is much harder to link to other, outside datasets. 
#  Calculate the k-anonymity of the dataset along a number of key indirect 
#  identifiers (gender, month of birth, others?) and output the 
#  results to a textfile.




