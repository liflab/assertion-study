# Analysis profile for IntelliJ
--project IntelliJ
--summary
--quiet
--root com:org
--source Repositories/IntelliJ
--output Reports/IntelliJ.html
--query Patterns
# The following file(s) cause a StackOverflowError
--ignore Parenth2.java
