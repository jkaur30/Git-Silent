\name{GSCOM}
\alias{GSCOM}
\title{GIT SILENT COMMIT!}
\usage{
gscom(repo = , user = ,com = )
}
\description{
Silently commits your users repo onto git and clears history.
}
\examples{
gscom(repo='Intro-to-R',user='vpran',com = 'commit')

Here vpran is a windows username.
Assumption is that you have your repos in "C:\Users\{USER}\Documents\GitHub"

com is the comment you want to enter into the commits.
repo for me here is 'INTRO-to-R'

Make sure git svn is installed and PATH variable added into the environment.

}
