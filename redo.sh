#!/usr/bin/env sh


WEBSERVER=ghost
PROXY=${WEBSERVER}_proxy
DB=${WEBSERVER}_db

echo "Killing Webserver Proxy: ${PROXY}..." 
docker kill ${PROXY} || true

echo "Killing Webserver: ${WEBSERVER}..." 
docker kill ${WEBSERVER} || true

echo "Killing DB: ${DB}..." 
docker kill ${DB} || true


echo "Removing Webserver Proxy: ${PROXY}..." 
docker rm ${PROXY} || true

echo "Removing Webserver: ${WEBSERVER}..." 
docker rm ${WEBSERVER} || true

echo "Removing DB: ${DB}..." 
docker rm ${DB} || true
