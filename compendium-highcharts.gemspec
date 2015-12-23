# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'compendium/highcharts/version'

Gem::Specification.new do |spec|
  spec.name          = "compendium-highcharts"
  spec.version       = Compendium::AmCharts::VERSION
  spec.authors       = ["Derick Matamoros"]
  spec.email         = ["cimtico@gmail.com"]
  spec.description   = %q{HighCharts.rb provider for Compendium reports}
  spec.summary       = %q{HighCharts.rb provider for Compendium reports}
  spec.homepage      = "https://github.com/cimtico/compendium-highcharts"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'lazy_high_charts', '>= 1.5.4'
  spec.add_dependency 'compendium', '>= 1.1.0'
end
