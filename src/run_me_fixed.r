# This fixes it for Rscript, but not for source or other code import statements:
wd = getwd()
tempwd = dirname(sub("--file=", "", commandArgs(FALSE)[4]))
setwd(tempwd)
import::from("text.r", print_text)
import::from("title_text.r", print_title_text)
setwd(wd)

text = "hi friend, how are you"
print_text(text)
print_title_text(text)
