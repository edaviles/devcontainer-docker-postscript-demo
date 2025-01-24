#!/bin/sh
echo "Running post-create script..."
alias k=kubectl
k version --client
