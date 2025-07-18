#!/bin/bash

sed -i 's/    apt-get update \\/    apt-get update \\\n    \&\& apt-get install -y  apache2-utils \\/g'  Dockerfile