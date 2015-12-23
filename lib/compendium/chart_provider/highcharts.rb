module Compendium
  module ChartProvider
    # Uses the amcharts.rb gem to provide charting
    class HighCharts < Compendium::AbstractChartProvider
      def initialize(type, data, params = {}, &setup_proc)
        @chart_id = "highchart-#{rand(10)}"

        LazyHighCharts::HighChart.new(type) do |f|
          yield(f, data)
        end
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