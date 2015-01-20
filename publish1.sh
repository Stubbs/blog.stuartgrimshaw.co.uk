#!/bin/bash

# Deployment script for blog.stuartgrimshaw.co.uk

rm -rf output_prod/

sculpin generate --env=prod

