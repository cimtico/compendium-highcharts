# Compendium::Amcharts [![Gem Version](https://badge.fury.io/rb/compendium-amcharts.svg)](http://badge.fury.io/rb/compendium-amcharts)

AmCharts.rb charting provider for Compendium reports.

## Usage

This gem adds amcharts.rb as a provider for rendering charts in Compendium. If multiple providers are loaded,
AmCharts.rb can be forced by adding the following to an initializer:

```ruby
Compendium.configure do |config|
  config.chart_provider = :AmCharts
end
```

## Installation

Add this line to your application's Gemfile:

    gem 'compendium-amcharts'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install compendium-amcharts

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
