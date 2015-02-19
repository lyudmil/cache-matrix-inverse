### Hi there!

If you're reading this, you're likely one of my peer evaluators for
the R Programming course. Nice to see you here. My name is Lyudmil.

### Project structure

Things should be straightforward enough, but it's probably not a bad
idea to go over it anyway. The folder structure is as follows:

```
cache-matrix-inverse          root directory
|
+-- test/                     directory containing unit tests
|   |
|   +-- cachematrix_test.R    unit tests for makeCacheMatrix and cacheSolve
|   |
|   +-- test_all.R            script to run all unit tests in test/
|
+-- .gitignore                tells Git to ignore certain files
|
+-- README.md                 what you're reading right now
|
+-- cachematrix.R             my solution to the assignment
```

You probably want to go straight to cachematrix.R and look around.
Hopefully the comments will answer any questions you have.

If you're still confused about something, you could take a look at
the unit tests. They're good examples of how to actually use the code
and they all pass. If you have doubts about whether something will
work as expected, you'll likely find the answer there.

### Downloading the code

From a command prompt where the `git` command is available:

1. Navigate to a folder where you'd like to download the code
2. Execute the following command:

`git clone https://github.com/lyudmil/cache-matrix-inverse.git`

The files should now be in a folder called `cache-matrix-inverse`
in your current folder.

3. Execute the following command to move into the working directory
for my solution:

`cd cache-matrix-inverse`

### Running the tests

If you want to see the tests pass, navigate to the working directory
for my solution (see "Downloading the code" above) and run:

`Rscript test/test_all.R`

### Contacting me

If you have any questions, you'll probably get the quickest response
by tweeting at me. My handle is @lyudmilangelov and I'd love to hear
from you.
