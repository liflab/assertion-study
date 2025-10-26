Study of assertion usage in open-source projects
================================================

This repository sets up an environment for analyzing the usage of assertions
in open source projets. The analysis is done using the
[Piglet](https://github.com/liflab/piglet) source code query engine.

The aggregated results of the study are available in the OpenDocument
spreadsheet named `Results.ods`. The experiments can also be re-run
independently by following the instructions below.

Prerequisites
-------------

- [A Java runtime environment](https://openjdk.org/) (version 17 or later)
- [Apache Ant](https://ant.apache.org/)
- To clone repositories considered in this analysis:
  - [CVS](https://www.nongnu.org/cvs/)
  - [Git](https://git-scm.org)
  - [Subversion](https://subversion.apache.org/)
- A high-performance computer, as the analysis takes quite some time (!)

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
   report is written to an HTML file with the same name as the project. This
   file can be opened in a browser to examine the exact locations where the
   patterns have been detected.

### By calling the tool directly

1. Type `java -jar lib/piglet-y.y.jar xxx.profile`, where `xxx`
   is the name of one of the project profies included in the repository
   (profiles are stored in the `Profiles` subfolder) and `y-y` is
   the version number.
2. Step 2 is as above.

Viewing the results
------------------

A report in the form of an HTML file is produced, normally saved in the
folder `Reports` and having the same name as the project being analyzed.
It can be open locally in a web browser to allow a detailed analysis of the found
tokens and the source code they correspond to. A text browser such as
[Lynx](https://lynx.invisible-island.net/) is
recommended for viewing results, especially for projects yielding a large
number of found tokens (it is much faster than GUI browsers).

Otherwise, the results of an analysis are also stored in machine-readable
JSON files, which serialize the tokens collected by each finder. These
files serve a double purpose: first, they allow further processing
of the tool’s results by automated means (such as auxiliary user-
defined scripts). Second, they are used by Piglet as a cache: when a
finder is asked to analyze a project for which a corresponding JSON
file exists, analysis is skipped and the finder merely deserializes
the previously computed results. These files, when they exist, are stored
in the folder `.cache/xxx`, where `xxx` is the corresponding
project name. There is one JSON file per token finder.

**NOTE:** the Piglet tool uses multiple threads and sets a timeout for
some of its operations. This may cause slight variations in the total count
of some patterns, depending on the speed of the host machine and the
exact order in which tasks are executed by the thread manager.

Queries
-------
The SPARQL queries evaluated by the engine are located in the `Patterns`
folder.

Projects currently included
-------------------------

- [Apache Hadoop](https://github.com/apache/hadoop) (1.9M LOC)
- [Bootique]() (25K LOC)
- [ElasticSearch](https://github.com/elastic/elasticsearch) (3.7M LOC)
- [Google Guava](https://github.com/google/guava) (30K LOC)
- [GraalVM](https://github.com/oracle/graal) (1.8M LOC)
- [IntelliJ]() (5.0M LOC)
- [JabRef](https://github.com/JabRef/jabref) (222K LOC)
- [Jenkins](https://github.com/jenkinsci/jenkins) (199K LOC)
- [JMars]() (202K LOC)
- [JSR 166](https://gee.cs.oswego.edu/dl/concurrency-interest/index.html) (291K LOC)
- [LibreOffice](https://anongit.freedesktop.org/git/libreoffice/core.git) (255K LOC --only Java)
- [MidPoint]() (943K LOC)
- [Neo4j]() (990K LOC)
- [Synthia](https://github.com/liflab/synthia) (12K LOC)
- [TeXtidote](https://github.com/sylvainhalle/textidote) (7K LOC)
- [Thunderbird]() (42K LOC)
- [Ziggy](https://github.com/nasa/ziggy) (82K LOC)

The `debug` project is only used to test each of the SPARQL queries.

### Version hashes

The hash of the latest commit in each downloaded repository can be displayed
by typing:

    ant -S hashes
