Study of assertion usage in open-source projects
================================================

Prerequisites
-------------

- [A Java runtime environment](https://openjdk.org/) (version 17 or later)
- [Apache Ant](https://ant.apache.org/)

Setting up the benchmark
------------------------

1. Clone the project in the folder of your choice.
2. At the command line, type `ant setup`. This will download the code analysis
   tool and all the public repositories on which it was applied.

Analyzing a project
-------------------

### Using Ant

1. At the command line, type `ant analyze -Dproject=xxx`, where `xxx` is the
   name of one of the project profiles included in the repository (e.g.
   `guava`).
2. A summary of the findings is printed directly in stdout, and a more detailed
   report is written to an HTML file with the same name as the project.

### By calling the tool directly

1. Type `java -jar lib/codefinder-1.0.jar --profile xxx.profile`, where `xxx`
   is the name of one of the project profies included in the repository.
2. Step 2 is as above.
