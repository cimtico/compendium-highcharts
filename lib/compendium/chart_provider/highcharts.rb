require 'lazy_high_charts'
require 'lazy_high_charts/high_chart'

module Compendium
  module ChartProvider
    # Uses the lazy-highcharts gem to provide charting
    class HighCharts < Compendium::AbstractChartProvider
      def initialize(type, data, params = {}, &setup_proc)
        @chart_id = "highchart-#{rand(10)}"

        @chart = ::LazyHighCharts::HighChart.new(type) do |f|
          yield(f, data)
        end

=begin
        @chart_globals = ::LazyHighCharts::HighChartGlobals.new do |f|
          f.global(useUTC: false)
          f.chart(
              backgroundColor: {
                  linearGradient: [0, 0, 500, 500],
                  stops: [
                      [0, "rgb(255, 255, 255)"],
                      [1, "rgb(240, 240, 255)"]
                  ]
              },
              borderWidth: 2,
              plotBackgroundColor: "rgba(255, 255, 255, .9)",
              plotShadow: true,
              plotBorderWidth: 1
          )
          f.lang(thousandsSep: ",")
          f.colors(["#90ed7d", "#f7a35c", "#8085e9", "#f15c80", "#e4d354"])
        end
=end
      end

      def render(template, container)
        template.high_chart_globals(@chart_globals) +
            template.high_chart(@chart_id, @chart)
      end

      private

      def chart_class(type)
        ::HighCharts::Chart.const_get(type.to_s.titlecase)
      end
    end
  end
end