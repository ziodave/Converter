module Converter
  
  class ConvertBuilder
    
    def self.create(source_adater, destination_adapter, convert_strategy)
      Rails.logger.debug "ConvertBuilder.create"
      
      Convert.new source_adater, destination_adapter, convert_strategy
    end
    
  end
  
end