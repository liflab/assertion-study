# Analysis profile for SonarQube
--project SonarQube
--summary
--quiet
--filteron @Test
--root org
--source Repositories/sonarqube
--output Reports/sonarqube.html
--query Patterns
--timeout 10
Repositories/sonarqube