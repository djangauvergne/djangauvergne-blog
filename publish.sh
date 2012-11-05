#!/bin/bash

pelican -s publishconf.py . -dD
# Add the CNAME
echo "auvergne.django-fr.org" > output/CNAME
ghp-import output
git push origin gh-pages
