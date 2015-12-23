HighCharts.rb charting provider for Compendium reports.

## Usage

This gem adds highcharts as a provider for rendering charts in Compendium. If multiple providers are loaded,
HighCharts can be forced by adding the following to an initializer:

```ruby
Compendium.configure do |config|
  config.chart_provider = :HighCharts
end
```

## Installation

Add this line to your application's Gemfile:

    gem 'compendium-highcharts'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install compendium-highcharts

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
