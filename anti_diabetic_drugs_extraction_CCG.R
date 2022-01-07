library(readr)
CCG_anti_diabetic_drugs <- read_csv("items for antidiabetic drugs by CCG.csv")
View(CCG_anti_diabetic_drugs)

epilepsy_dep_ccg.df <- data.frame(CCG_control_for_epilepsy[CCG_control_for_epilepsy$id %in% c("00R", "14L", "01J", "05L", "99A", "07L", "03F", "07T", "08M", "00Q"), ])
# dataframe with the deprived CCG data
epilepsy_aff_ccg.df <- data.frame(CCG_control_for_epilepsy[CCG_control_for_epilepsy$id %in% c("10C", "99M", "14Y", "03W", "11A", "15A", "10Q", "03Q", "10J", "06N"), ])   
# dataframe with the affluent CCG data

# Put deprived and affluent CCG data into 1 dataframe#
epilepsy_ccg.df <- data.frame(CCG_control_for_epilepsy[CCG_control_for_epilepsy$id %in% c("00R", "14L", "01J", "05L", "99A", "07L", "03F", "07T", "08M", "00Q", 
                                                                                          "10C", "99M", "14Y", "03W", "11A", "15A", "10Q", "03Q", "10J", "06N"), ])

install.packages("rio")
install.packages("openxlsx")

library(openxlsx)
library(rio)

export(epilepsy_ccg.df, "anti_diabetic_drugs_ccg_imd.xlsx")
