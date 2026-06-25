# Add a new media type with the IANA type, the extension/symbol, and category
MediaType.register("model/vnd.example", :example3d, category: :model,
  # These are optional, if required
  additional_extensions: ["ex3d"],
  additional_types: ["model/x-example"]
)
