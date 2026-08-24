/******************************************************************************
/// PUT SOME GOOD INFORMATION UP HERE WOO
/// SET YOUR DIRECTORY IN A REPRODUCIBLE WAY WOO
*/
************************ SETUP *******************************
cap file close f
file open f using "Balance_table.tex", write replace

file write f " \begin{tabular}{lcc}" _n "\hline" _n " \hline" _n "Variable & Mean & TaRL-Control\\"   _n " & (1) & (2) \\"_n  "\hline" _n

************************** START HERE ******************************************
/* We already have a basic LaTeX balance table set up above, and some code to close it out below. 
You'll need to take three steps:
1. Get the necessary estimates (baseline mean, group difference b/w TaRL and control + SE)
2. Figure out how to get that into the table structure set up above
3. Figure out how to make the above two steps automated and reproducible

This is a big task, so there will be lots of hints in the markdown file!
*/





******** Bonus question! If you completed all of the above, try adding p-value stars (*** for <=.01, ** for >.01 & <=.05, so on) to the table automatedly

*******************************************************************************


file write f "\hline" _n "\hline" _n "\end{tabular}" _n


************************ CLOSING OUT *******************************
file write f _n"\end{document}"
file close f
