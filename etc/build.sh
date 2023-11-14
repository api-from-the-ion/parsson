#!/bin/bash -x

#setup compile Java
bash -ic "sdk use java 11.0.21-tem"

#install
mvn -B -V -U -C -Poss-release,staging clean verify org.glassfish.copyright:glassfish-copyright-maven-plugin:check -Dgpg.skip=true -Dcopyright.ignoreyear=true

#restore java
bash -ic "sdk use java 17.0.9-tem"
