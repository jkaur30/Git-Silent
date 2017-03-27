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
  wd = getwd()
  shell(paste("cd ",wd," & git.exe pull & git.exe add . & git.exe commit -m ",com," & git.exe push origin master",sep = ''))
  cat("\014")
  write("", file=".blank")
  loadhistory(".blank")
  unlink(".blank")
}

