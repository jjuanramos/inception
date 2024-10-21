#!/bin/bash

rm -rf mariadb/*
rm -rf wordpress/*

docker system prune -af

docker volume rm mariadb
docker volume rm wordpress

docker compose up
