# Dockerfile for Maian Music

Maian Music is a PHP application for selling digital and physical music.

## Running

You will need to provide the following environment variables

`MM_DB_HOST`
`MM_DB_USER`
`MM_DB_PASS`
`MM_DB_NAME`

## Building

1. Download the free version of Maian Music from https://www.maianmusic.com
1. Move the `maian_music.zip` archive into this directory
1. Unzip the archive
1. Run `docker build . -t djjudas21/maian-music:tagname`
1. Run `docker push djjudas21/maian-music:tagname`

You will need to supply:
* license file
* MySQL credentials
