# Manyfold Example Plugin

This repo is a example plugin for [Manyfold](https://manyfold.app). It shows a number of things you can do with plugins.

## Installation

To install a Manyfold plugin, place it (unzipped) inside the `plugins` folder of the Manyfold app. If you're running in a Docker container, you will probably want to create a new volume for plugins and mount it at `/usr/src/app/plugins`.

NOTE: restart Manyfold after installing a plugin so that it gets picked up.

## Dependencies

Currently there is no way to add new Ruby dependencies from plugins. This may be possible in the future, but for now, you will need to use gems that are available in the main application.

See the [Manyfold Gemfile](https://github.com/manyfold3d/manyfold/blob/main/Gemfile) for direct dependencies, or the [Gemfile.lock](https://github.com/manyfold3d/manyfold/blob/main/Gemfile.lock) file for a complete list. Similarly, see [package.json](https://github.com/manyfold3d/manyfold/blob/main/package.json) and [yarn.lock](https://github.com/manyfold3d/manyfold/blob/main/yarn.lock) for preinstalled npm packages.

## Controllers & Views

You can add your own pages to the application - see `app/controllers/example_plugin` for a skeleton controller, with associated views in `app/views/example_plugin`.

## Print services

You can add new print services, which are responsible for communicating with printer APIs. See `app/services/print`.
