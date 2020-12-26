require 'yaml'
module Voom
  module Presenters
    module Plugins
      module AnalyticsServiceTheme
        module DSLHelpers

          palette_file = File.expand_path("./palette.yml", File.dirname(__FILE__))
          palette = YAML.load_file(palette_file)

          THEMES = {
            analytics_service_theme: palette
          }.freeze

          def rgb_color(color_code, theme_code: :analytics_service_theme)
            theme = THEMES.fetch(theme_code) { raise(Errors::ParameterValidation, "Failed to locate theme for: #{theme_code}") }
            colors = theme.fetch(:colors) { raise(Errors::ParameterValidation, "No RGB colors defined for: #{theme_code}") }
            colors.fetch(color_code) { raise(Errors::ParameterValidation, "Failed to locate color for: #{color_code}") }
          end
        end

        module WebClientComponents
          # The string returned from this method will be added to the HTML header section of the page layout
          # It will be called once for the page.
          # The pom is passed along with the sinatra render method.
          def render_header_analytics_service_theme(_pom, render:)
            view_dir = File.join(__dir__, 'analytics_service_theme')
            render.call :erb, :analytics_service_theme_header, views: view_dir
          end
        end
      end
    end
  end
end
