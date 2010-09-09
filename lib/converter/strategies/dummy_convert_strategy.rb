module Converter::Strategies
  
  class DummyConvertStrategy
    
    def initialize
      Rails.logger.debug "DummyConvertStrategy.initialize"
    end
    
    def convert(file_in, destination_adapter)
      Rails.logger.debug "DummyConvertStrategy.convert [#{file_in}][#{destination_adapter}]"

    end
    
  end
  
end