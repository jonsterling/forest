#!/bin/bash

npm install

./node_modules/.bin/esbuild --minify --bundle javascript/forester.js --outfile=assets/forester.js


