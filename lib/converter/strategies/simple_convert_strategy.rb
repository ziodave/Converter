# require "RMagick"
# include "Magick"

module Converter::Strategies
  
  class SimpleConvertStrategy
    
    def initialize
      Rails.logger.debug "SimpleConvertStrategy.initialize"
    end
    
    def convert(file_in, destination_adapter)
      Rails.logger.debug "SimpleConvertStrategy.convert [#{file_in}][#{destination_adapter.file_out}]"

      # image = ImageList.new(file_in)
      # image.resize("x2048>")
      # image.crop("1546x2048>")
      # image.density("200x200")
      # image.quality(92)
      # image.colorspace=RGBColorspace
      # image.write(file_out)

      # result = `/usr/local/bin/convert +repage +gravity -resize x2048\\> -crop 1546x2048\\> -density 200x200 -quality 92 -colorspace RGB \"#{file_in}\" \"#{destination_adapter.file_out}\"`
      # result = `/usr/local/bin/convert +repage +gravity -resize x1024\\> -crop 786x1024\\> -density 132x132 -units PixelsPerInch -colorspace RGB \"#{file_in}\" -quality 100 \"#{destination_adapter.file_out}\"`
      result = `/usr/bin/convert +repage +gravity -adaptive-resize x2048\\> -density 132x132 -units PixelsPerInch -colorspace RGB \"#{file_in}\" -quality 92 \"#{destination_adapter.file_out}\"`
      
      Rails.logger.debug "Convert results: #{result}"
      
      # return the array of output files
      ext_name = File.extname(destination_adapter.file_out)
      destination_adapter.complete Dir.glob("#{File.dirname(destination_adapter.file_out)}/#{File.basename(destination_adapter.file_out,ext_name)}-*#{ext_name}")
    end
    
  end
  
end
