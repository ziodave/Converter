module Converter

  class Convert

    def initialize(source_adapter, destination_adapter, conversion_strategy)
      Rails.logger.debug "Converter.initialize [#{source_adapter}][#{destination_adapter}][#{conversion_strategy}]"
      
      Rails.logger.error "The source adapter is nil" if source_adapter.nil?
      Rails.logger.error "The destination adapter is nil" if destination_adapter.nil?
      Rails.logger.error "The conversion strategy is nil" if conversion_strategy.nil?
      
      @source_adapter = source_adapter
      @destination_adapter = destination_adapter
      @conversion_strategy = conversion_strategy
    end
    
    def run
      Rails.logger.debug "Convert.run"

      @conversion_strategy.convert( @source_adapter.file_in, @destination_adapter)
    end

  end

end
