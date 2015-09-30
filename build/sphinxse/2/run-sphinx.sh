#!/bin/bash

CONFIG=/etc/sphinx/sphinx.conf

# Make sure we're not confused by old, incompletely-shutdown httpd
# context after restarting the container.  httpd won't start correctly
# if it thinks it is already running.
rm -rf /var/run/sphinx/*

echo "### Make indexation (in rotate mode) ###"
/usr/bin/indexer --config ${CONFIG} --rotate --all

echo "### Run Sphinx Daemon ###"
/usr/bin/searchd --config ${CONFIG} --safetrace --nodetach