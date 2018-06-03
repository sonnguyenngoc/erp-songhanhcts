# encoding: utf-8
module Erp
  module Partners
    class PartnerUploader < CarrierWave::Uploader::Base
    
      # Include RMagick or MiniMagick support:
      # include CarrierWave::RMagick
      include CarrierWave::MiniMagick
    
      # Choose what kind of storage to use for this uploader:
      storage :file
      # storage :fog
    
      # Override the directory where uploaded files will be stored.
      # This is a sensible default for uploaders that are meant to be mounted:
      def store_dir
        "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
      end
      
      version :sys do
        process resize_to_fill: [150, 150]
      end
      
      version :listing do
        process resize_to_fill: [390, 195]
      end
      
      version :detail do
        process resize_to_fill: [600, 300]
      end
    end
  end
end