#!/bin/bash
 
# Run CodeScene analysis
codescene analyze --config /app/codescene.yaml --token S_NYpqdEUimo6yice90UhGYt4NmOr4CvxZ2fULoFUpk.C3oeAHoGjisKbrzBzbG3pZve1aXZkDBRQafvftjpYqE
 
# Start the Java application
java -jar /app/app.jar
