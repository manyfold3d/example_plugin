require_relative "lib/example_plugin/version"

Gem::Specification.new do |spec|
  spec.name = "Example Plugin"
  spec.version = ExamplePlugin::VERSION
  spec.authors = ["James Smith"]
  spec.email = ["james@floppy.org.uk"]
  spec.homepage = "https://github.com/manyfold3d/example_plugin"
  spec.summary = "An example Manyfold plugin"
  spec.description = "Demonstrates plugin structure as well as how to add print APIs, external URL loaders, file handlers, UI components and more!"
  spec.license = "MIT"
end
