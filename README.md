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

## Components & Hooks

The main application has various "hooks", locations within the app UI that will render [Phlex](https://phlex.fun) components that are registered by plugins. For an example, see `components/example_plugin/nav_link.rb`, and the hook registration in `config/initializers/register_hooks.rb`.

## Print services

You can add new print services, which are responsible for communicating with printer APIs. See `app/services/print`.

## Media types and File handlers

You can register your own media types - see `config/initializers/media_types.rb` for details. All registered media types will be indexed by Manyfold when scanning for files on disk.

Relatedly, file handlers are used for many things across Manyfold; the simplest example is "open in" links for files. You can add a new file handler for a slicer with just a few lines. See `app/lib/file_handlers` for an example.

## Translations and text strings

Locale-specific strings can be included in `config/locales/en.yml`, and whatever other languages you have translated them into. See the Manyfold source for a list of supported languages. Use the standard Rails `t()` method to use the translation in your views, or use `translate()` to get a version with less markup for use in HTML attribute values (e.g. button labels).

## Images and other static assets

Not currently available, but hopefully soon.
