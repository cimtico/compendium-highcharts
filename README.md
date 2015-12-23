HighCharts.rb charting provider for Compendium reports.

## Usage

This gem adds highcharts as a provider for rendering charts in Compendium. If multiple providers are loaded,
HighCharts can be forced by adding the following to an initializer:

```ruby
Compendium.configure do |config|
  config.chart_provider = :HighCharts
end
```

```ruby
    @report.invoices_over_time.render_chart(self, 'graph') do |f, data|
      f.xAxis(categories: data.map { |r| r['purchase_date'] })
      f.series(name: 'Total', yAxis: 0, data: data.map { |r| r['total'] })
      f.series(name: 'Taxes', yAxis: 0, data: data.map { |r| r['taxes'] })
      f.series(name: 'Teams', yAxis: 1, data: data.map { |r| r['teams'] }, type: 'line')

      f.yAxis [
                  {:title => {:text => 'Dollars'}, labels: {format: '${value}'}},
                  {:title => {:text => 'Teams'}, opposite: true},
              ]


      f.legend(align: 'right', verticalAlign: 'top', y: 75, x: -50, layout: 'vertical')
      f.chart({defaultSeriesType: 'area'})
    end
```

For more information about configuration please visit https://github.com/michelson/lazy_high_charts

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
