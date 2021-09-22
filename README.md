# Dockerfile for Maian Music

Maian Music is a PHP application for selling digital and physical music.

## Running

This image is available on [Docker Hub](https://hub.docker.com/r/djjudas21/maian-music).

You will need to provide the following environment variables to connect to the database
and set up the admin user:

* `MM_DB_HOST`
* `MM_DB_USER`
* `MM_DB_PASS`
* `MM_DB_NAME`
* `MM_ADMIN_USER`
* `MM_ADMIN_PASS`

If you have a commercial license file for Maian Music, you will need to mount it in this Docker image at
`/var/www/html/licence.lic`.

You will also need to mount a volume at `/var/www/secure` to store MP3 files.

## Building

Maian Music is closed-source freeware, so you will need to obtain the download yourself
to build this image, as the upstream code cannot be included here.

1. Download the free version of Maian Music from https://www.maianmusic.com
1. Move the `maian_music.zip` archive into this directory
1. Unzip the archive
1. Run `docker build . -t djjudas21/maian-music:tagname`
1. Run `docker push djjudas21/maian-music:tagname`
