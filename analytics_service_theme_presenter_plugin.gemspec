
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "analytics_service_theme_presenter_plugin"
  spec.version       = '0.0.1'
  spec.authors       = ["Rx"]
  spec.email         = ["rx@voomify.com"]

  spec.summary       = "A plugin to add Voomify Analtyics Service brand theme to presenters"
  spec.homepage      = 'http://github.com/voomify/analytics_service_theme_presenters_plugin'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 12.3"
end
