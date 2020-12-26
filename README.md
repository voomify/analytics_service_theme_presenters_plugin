# Analytics Service Theme Presenter Plugin

A plugin for [presenters](http://github.com/rx/presenters) containing styles for the Voomify Analytics Service.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'analytics_service_presenter_plugin'
```

And then execute:

    $ bundle

Add the following to your `config/initializers/presenters.rb`
 
```ruby
Rails.application.config.to_prepare do
  Voom::Presenters::Settings.configure do |config|
    config.presenters.plugins.push(:localization)
    config.presenters.plugins.push(:analytics_service_theme)
  end
end
```
Or install it yourself as:

    $ gem install analytics_service_theme_presenter_plugin

## Usage

To modify the theme - update the palette.json and palette-map.json, then run ./build_theme

This generates files from the json files. You can drop in palette.json from the Refactoring UI kit, you just need to update the palette-map.json appropriately.

