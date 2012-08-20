#!/bin/bash

# Get the template
template=`cat template.html`

# Save the file
printf "$template" "$(marked --gfm < README.md)" > index.html

echo -e "\033[33m √ Build complete"
echo -e -n "\033[0m"
