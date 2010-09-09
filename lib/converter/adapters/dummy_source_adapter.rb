module Converter::Adapters
  
  class DummySourceAdapter < SourceAdapter

    def initialize
      Rails.logger.debug "DummySourceAdapter.initialize"
    
      @file_in = "dummy.pdf"
    end
    
  end

end