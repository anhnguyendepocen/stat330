#' Create directory/files for new homework
#' 
#' @param hw A scalar numeric indicating the homework #
#' @param due_date An object that can be coerced to a date
new_homework <- function(hw, due_date) {
	due_date = as.Date(due_date)
	hwC = formatC(hw,width=2, format="d", flag="0")
	new_dir = paste0("hw",hwC)
	
	if(dir.exists(new_dir)) {
		stop("Directory already exists!")
	} else {
		dir.create(new_dir)
	}
	
	file.copy(from = list.files("template/", full.names = TRUE),
						to = new_dir)
	
	# Update file names
	old_file = file.path(new_dir,c("STAT330_hw#.tex","STAT330_hw#_sol.tex"))
	new_file = gsub("#",hwC,old_file)
	file.rename(from = old_file, to = new_file)
	
	# Update homework #
	for (f in file.path(new_dir, c("homework.tex","Makefile"))) {
		x <- readLines(f)
		y <- gsub("#", hwC, x)
		cat(y, file=f, sep="\n")
	}
	
	# Add due date
	cat("\\rhead{\\sffamily Due: ", format(due_date, "%d %B %Y"),"}\n", 
			file = file.path(new_dir, "homework.tex"),
			sep = "",
			append = TRUE)
}
