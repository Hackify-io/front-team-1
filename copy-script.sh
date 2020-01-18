#!/bin/bash

# Copy JavaScript files
if [ -d ../back-team-1/static/js ]
then
    rm -Rf ../back-team-1/static/js/*
else
    mkdir -p ../back-team-1/static/js
fi

cp dist/*.bundle.js ../back-team-1/static/js
cp node_modules/react/umd/react.production.min.js ../back-team-1/static/js
cp node_modules/react-dom/umd/react-dom.production.min.js ../back-team-1/static/js


# Copty CSS files
if [ -d ../back-team-1/static/css ]
then
    rm -Rf ../back-team-1/static/css/*
else
    mkdir -p ../back-team-1/static/css
fi

cp node_modules/bootstrap/dist/css/bootstrap.min.css ../back-team-1/static/css

# Copy django templates
if [ -d ../back-team-1/templates ]
then
    rm -Rf ../back-team-1/templates/*
else
    mkdir ../back-team-1/templates
fi

cp templates/base.html ../back-team-1/templates
cp -R templates/where2med_auth ../back-team-1/templates
cp -R templates/home_page ../back-team-1/templates
cp -R templates/admin_dashboard ../back-team-1/templates
cp -R templates/scheduling ../back-team-1/templates
