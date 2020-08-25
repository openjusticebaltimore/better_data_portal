#!/usr/bin/env bash

mkdir -p ~/.streamlit/

echo "\
[general]
email = \"name@domain.com\"
" > ~/.streamlit/credentials.toml

echo "\
[server]
headless = true
port = $PORT
" > ~/.streamlit/config.toml