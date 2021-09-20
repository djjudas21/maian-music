# Dockerfile for Maian Music

* Download the free version of Maian Music from https://www.maianmusic.com
* Unzip the archive
* Copy this `Dockerfile` into the `maian_music` directory, at the same level as `music-store`

You will need to supply:
* license file
* MySQL credentials

## Images

### App

You will need to provide the following environment variables

`MM_DB_HOST`
`MM_DB_USER`
`MM_DB_PASS`
`MM_DB_NAME`
