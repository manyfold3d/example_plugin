Rails.application.config.after_initialize do
  # You can add view components to hooks after initialization
  PluginManager.register(:navbar, Components::ExamplePlugin::NavLink)
end
