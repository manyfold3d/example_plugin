# Plugin components should derive from Components::Base to get helpers etc from the main app
class Components::ExamplePlugin::NavLink < Components::Base
  def view_template
    a href: "/example_plugin", class: "nav-link" do
      Icon(icon: "window")
      whitespace
      span { t("components.example_plugin.nav_link.label") }
    end
  end
end
