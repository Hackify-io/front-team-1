#!/bin/bash

# Copy JavaScript files
if [ -d ../back-team-1/where2med/static/js ]
then
    rm -Rf ../back-team-1/where2med/static/js/*
else
    mkdir -p ../back-team-1/where2med/static/js
fi

cp dist/*.bundle.js ../back-team-1/where2med/static/js
cp node_modules/react/umd/react.production.min.js ../back-team-1/where2med/static/js
cp node_modules/react-dom/umd/react-dom.production.min.js ../back-team-1/where2med/static/js
cp node_modules/bootstrap/dist/js/bootstrap.bundle.min.js ../back-team-1/where2med/static/js
cp node_modules/jquery/dist/jquery.min.js ../back-team-1/where2med/static/js

# Copty CSS files
if [ -d ../back-team-1/where2med/static/css ]
then
    rm -Rf ../back-team-1/where2med/static/css/*
else
    mkdir -p ../back-team-1/where2med/static/css
fi

cp css/*.css ../back-team-1/where2med/static/css
cp node_modules/bootstrap/dist/css/bootstrap.min.css ../back-team-1/where2med/static/css

# Copy images
if [ -d ../back-team-1/where2med/static/images ]
then
    rm -Rf ../back-team-1/where2med/static/images/*
else
    mkdir -p ../back-team-1/where2med/static/images
fi

cp images/* ../back-team-1/where2med/static/images

# Copy django templates
if [ -d ../back-team-1/where2med/templates ]
then
    rm -Rf ../back-team-1/where2med/templates/*
else
    mkdir ../back-team-1/where2med/templates
fi

cp templates/base.html ../back-team-1/where2med/templates
cp -R templates/where2med_auth ../back-team-1/where2med/templates
cp -R templates/home_page ../back-team-1/where2med/templates
cp -R templates/admin_dashboard ../back-team-1/where2med/templates
cp -R templates/scheduling ../back-team-1/where2med/templates
