#!/bin/bash

# Create the template
read -d '' template <<- EOF
<!DOCTYPE html>
<html>
  <head>
    <title>HTML6 - The Spec That Brings Us Freedom</title>
    <meta name="description" content="HTML5 was a great leap forward for web developers, however there is a void that HTML5 has yet to fix and that void is truly semantic markup.">
    <link rel="stylesheet" type="text/css" href="css/style.css" />
  </head>
  <body>
    %s
    <script src="js/jquery-1.8.0.min.js"></script>
    <script src="js/prettify.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
EOF

# Save the file
printf "$template" "$(marked --gfm < README.md)" > index.html

echo -e "\033[33m √ Build complete"
echo -e -n "\033[0m"
