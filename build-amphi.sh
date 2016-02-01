#!/bin/bash

# Build the client
stack build --stack-yaml=amphi-client/stack.yaml

# Copy over the javascript
rm -f amphi-server/static/all.js
cp $(stack path --stack-yaml=amphi-client/stack.yaml --local-install-root)/bin/amphi-client.jsexe/all.js amphi-server/static/all.js

# Build the server
stack build --stack-yaml=amphi-server/stack.yaml
