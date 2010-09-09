module Converter::Adapters
  
  class DummyDestinationAdapter < DestinationAdapter
    
    def initialize
      Rails.logger.debug "DummyDestinationAdapter.initialize"
      
      @file_out = "dummy-out.jpg"
    end
    
  end
  
end