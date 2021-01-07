@echo off
mvn install archetype:update-local-catalog
cd ..
mvn archetype:generate -DarchetypeCatalog=local -DarchetypeArtifactId="sample-archetype" -DarchetypeGroupId="io.github.jugbot" -DoutputDirectory=tmp
copy tmp/*/ ./
del tmp