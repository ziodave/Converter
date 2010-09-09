module Converter::Adapters
  
  class SimpleDestinationAdapter < DestinationAdapter
    
    def initialize(file_out)
      Rails.logger.debug "SimpleDestinationAdapter.initialize [#{file_out}]"
      
      @file_out = file_out
    end
    
    def complete(file_array)
      Rails.logger.debug "SimpleDestinationAdapter.complete [#{file_array}]"
      
    end
    
  end
  
end