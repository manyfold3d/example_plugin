class FileHandlers::ExampleSlicer < FileHandlers::Base
  # i18n-tasks-use t('model_files.download.example_slicer')

  ENVIRONMENTS = [:client].freeze

  INPUT_TYPES = Mime::EXTENSION_LOOKUP.slice("stl").values.freeze

  def self.open_url_for(file, client_os: nil)
    URI::Generic.new(
      "exampleslicer", nil,
      "open", nil, nil, CGI.escapeURIComponent(signed_url_for(file)), nil,
      nil, nil
    ).to_s
  end
end
