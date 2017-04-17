# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

gscom = function(com = 'commit')
{
    out <- tryCatch(
      {
        # Just to highlight: if you want to use more than one
        # R expression in the "try" part then you'll have to
        # use curly brackets.
        # 'tryCatch()' will return the last evaluated expression
        # in case the "try" part was completed successfully
        system(paste("cd ",getwd()," & git.exe pull & git.exe add . & git.exe commit -m ",com," & git.exe push origin master",sep = ''))
        cat("\014")
        # The return value of `readLines()` is the actual value
        # that will be returned in case there is no condition
        # (e.g. warning or error).
        # You don't need to state the return value via `return()` as code
        # in the "try" part is not wrapped insided a function (unlike that
        # for the condition handlers for warnings and error below)
      },
      error=function(cond) {
        cat("\014")
        message("Here's the error message: You are not in the working directory for the repo")
        # Choose a return value in case of error
        return(message(cond))
      },
      warning=function(cond) {
        cat("\014")
        message("Here's the original warning message: You are not in the working directory for the repo")
        # Choose a return value in case of warning
        return(message(cond))
      },
      finally={
        # NOTE:
        # Here goes everything that should be executed at the end,
        # regardless of success or error.
        # If you want more than one expression to be executed, then you
        # need to wrap them in curly brackets ({...}); otherwise you could
        # just have written 'finally=<expression>'
        write("", file=".blank")
        loadhistory(".blank")
        unlink(".blank")
      }
    )
    return("You're All Set !! ;)")
}
