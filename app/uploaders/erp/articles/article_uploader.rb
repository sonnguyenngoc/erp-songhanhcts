# encoding: utf-8
module Erp
  module Articles
    class ArticleUploader < CarrierWave::Uploader::Base
    
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
      
      version :system do
        process resize_to_fill: [150, 150]
      end
      
      version :large do
        process resize_to_fill: [848, 339]
      end
      
      version :medium do
        process resize_to_fill: [360, 252]
      end
      
      version :small do
        process resize_to_fill: [80, 80]
      end
    end
  end

end
