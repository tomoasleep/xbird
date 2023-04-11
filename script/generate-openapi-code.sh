#!/bin/bash

openapi-generator generate \
 --generator-name ruby \
 --input-spec data/twitter-v2-openapi.json \
 --additional-properties=gemName=xbird,gemRequiredRubyVersion='>= 3.0.0' \
 --library=faraday \
 --output ./

rubocop -A
