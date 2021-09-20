# Dockerfile for Maian Music

Maian Music is a PHP application for selling digital and physical music.

## Setup

On first run, you will need to run the image with an overridden command of `/initdb.sh`
so it can create the database schema. Then you can run normally.

## Running

You will need to provide the following environment variables to connect to the database:

* `MM_DB_HOST`
* `MM_DB_USER`
* `MM_DB_PASS`
* `MM_DB_NAME`

If you have a commercial license file for Maian Music, you will need to mount it in this Docker image at
`/var/www/html/license.lic`.

You will also need to mount a volume at `/var/www/secure` to store MP3 files.

## Building

1. Download the free version of Maian Music from https://www.maianmusic.com
1. Move the `maian_music.zip` archive into this directory
1. Unzip the archive
1. Run `docker build . -t djjudas21/maian-music:tagname`
1. Run `docker push djjudas21/maian-music:tagname`
