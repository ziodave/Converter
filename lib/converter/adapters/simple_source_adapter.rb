require "ftools"

module Converter::Adapters
  
  class SimpleSourceAdapter < SourceAdapter

    def initialize(file_in)
      Rails.logger.debug "SimpleSourceAdapter.initialize"
    
      Rails.logger.error "File #{file_in} doesn't exist" unless file_in && File.exist?(file_in)
    
      @file_in = file_in
    end
    
  end

end