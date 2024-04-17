#!/bin/bash
 
# Run CodeScene analysis
codescene analyze --config /app/codescene.yaml --token $CODESCENE_API_TOKEN
 
# Start the Java application
java -jar /app/app.jar
