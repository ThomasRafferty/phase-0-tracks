# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control is software that allows multiple devlopers to work code at the same time without interfering with each other and allows for an orgnized history of development.  Version control software similarly also the merging of seperate individuals or groups work back into the master code.

* What is a branch and why would you use one?
A branch is a copy of the master code that can be worked on by an individual and stored seperatly.  It is very useful for a developer to be working in a branch for it allows them to work through their coding in an individual space that does not interfere with others or endanger the master code.

* What is a commit? What makes a good commit message?
A commit is when an indivdual stores their work in a repository after those changes have been staged.  A good commit comment is written in the precent tense, and clearly outlines the changes made in order to be easily accessible if these changes need to be reviewed in the future by oneself or other developers.

* What is a merge conflict?
A merge conflict is when git (our version control system) is unable to reconcile the code in which one is trying to integrate in from a branch to the master code.  This often arises when individuals changed the same lines of code -one possible deleting while the other edits- or files where given the same name.  In any of these cases git will inform you of the unmerged path and we -probably upon discussion with other developer- with have to figure the best way to proceed.