#!/bin/bash

npm install

./node_modules/.bin/esbuild --bundle javascript/forester.js --outfile=assets/forester.js


