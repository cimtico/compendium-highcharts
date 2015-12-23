require 'compendium/highcharts/version'
require 'compendium'
require 'compendium/abstract_chart_provider'

module Compendium
  module ChartProvider
    autoload :HighCharts, 'compendium/chart_provider/highcharts'
  end

  class AbstractChartProvider
    def self.find_chart_provider
      return :HighCharts if defined?(HighCharts)
      super
    end
  end
end
