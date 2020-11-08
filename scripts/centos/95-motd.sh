#!/bin/bash
# Prepare Centos OS template for vSphere cloning
# @author Michael Poore
# @website https://blog.v12n.io

# Build date used for motd
RELEASE=$(cat /etc/centos-release)
DOCS="https://github.com/thecloudxpert/packer-centos7"

# Create Issue
cat << ISSUE > /etc/issue
"
    thecloudxpert 
    $RELEASE
    Build REPLACEWITHBUILDVERSION
    $DOCS
"
ISSUE

# MOTD symlinks
ln -sf /etc/issue /etc/issue.net