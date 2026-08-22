# ------------------------------------------------------------------------------------------------ #
#             RST 2025 Data Coding Best Practices Exercise - Data Visualization                    #
#                                                                                                  #
#                                                                                                  #
# ------------------------------------------------------------------------------------------------ #

# Load required libraries
library()


### SET YOUR DIRECTORY IN A REPRODUCIBLE WAY WOO



### IMPORTING DATA 



### TABLE SET-UP
ftable <- c( "\\begin{tabular}{lcc}", "\\hline" , " \\hline" , 
            "Variable & Mean & TaRL-Control\\\\" , 
            " & (1) & (2) \\\\",  "\\hline")


###### START HERE 
# We already have a basic LaTeX balance table set up above, and some code to close it out below. 
# You'll need to take three steps:
# 1. Get the necessary estimates (baseline mean, group difference b/w TaRL and control + SE)
# 2. Figure out how to get that into the table structure set up above
# 3. Figure out how to make the above two steps automated and reproducible
# 
# This is a big task, so there will be lots of hints in the markdown file!
balance_vars <- c('female', 'age_m0','base_aser_total_norm')





#### Bonus question! If you completed all of the above, try adding p-value stars 
## (*** for <=.01, ** for >.01 & <=.05, so on) to the table automatedly


### TABLE CLOSE OUT
ftable <- c(ftable,"\\hline" , "\\hline" , "\\end{tabular}")
write.table(bene,'[FILENAME]', row.names = F,col.names = F,quote = F)


