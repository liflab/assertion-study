# Analysis profile for the control project
--project Control
--summary
--quiet
--root test
--source Repositories/debug
--output Reports/Debug.html
#--query Patterns
--query Patterns/no-assertions.sparql
--no-cache
--follow 1
Repositories/debug
