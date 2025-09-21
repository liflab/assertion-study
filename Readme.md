Study of assertion usage in open-source projects
================================================

Prerequisites
-------------

- [A Java runtime environment](https://openjdk.org/) (version 17 or later)
- [Apache Ant](https://ant.apache.org/)
- To clone repositories considered in this analysis:
  - [CVS](https://www.nongnu.org/cvs/)
  - [Git](https://git-scm.org)
  - [Subversion](https://subversion.apache.org/)

Setting up the benchmark
------------------------

1. Clone the project in the folder of your choice.
2. At the command line, type `ant setup`. This will download the code analysis
   tool and all the public repositories on which it was applied.

Analyzing a project
------------------

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

Projects currently included
-------------------------

- [Apache Hadoop](https://github.com/apache/hadoop) (1.9M LOC)
- [ElasticSearch](https://github.com/elastic/elasticsearch) (3.7M LOC)
- [Google Guava](https://github.com/google/guava) (30K LOC)
- [GraalVM](https://github.com/oracle/graal) (1.8M LOC)
- [JabRef](https://github.com/JabRef/jabref) (222K LOC)
- [Jenkins](https://github.com/jenkinsci/jenkins) (199K LOC)
- [JSR 166](https://gee.cs.oswego.edu/dl/concurrency-interest/index.html) (291K LOC)
- [LibreOffice](https://anongit.freedesktop.org/git/libreoffice/core.git) (255K LOC --only Java)
- [Synthia](https://github.com/liflab/synthia) (12K LOC)
- [TeXtidote](https://github.com/sylvainhalle/textidote) (7K LOC)
- [Ziggy](https://github.com/nasa/ziggy) (82K LOC)
