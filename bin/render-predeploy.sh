#!/usr/bin/env bash

# Exit on error
set -o errexit

# Pre-deploy command for paid Render instances
# Run database migrations before deploying the new version
bin/rails db:migrate 