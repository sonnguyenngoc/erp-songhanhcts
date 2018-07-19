module Erp
  module Songhanhcts
    module Frontend
      class ServiceController < Erp::Frontend::FrontendController
        def service_level_1
          if params[:cat_id].present?
            @current_menu = Erp::Articles::Category.find(params[:cat_id])
            @services = Erp::Articles::Article.where(category_id: @current_menu.id).where(parent_id: nil)
            @service = @services.last
            @meta_keywords = @service.meta_keywords if @service.present?
            @meta_description = @service.meta_description if @service.present?
          end
        end
        
        def service_level_2
          if params[:cat_id].present?
            @current_menu = Erp::Articles::Category.find(params[:cat_id])
            @service = Erp::Articles::Article.where(category_id: @current_menu.id)
              .where(parent_id: nil).last
            @meta_keywords = @service.meta_keywords if @service.present?
            @meta_description = @service.meta_description if @service.present?
          end
        end
        
        def service_detail
          @current_menu = Erp::Articles::Category.find(params[:cat_id])
          @service = Erp::Articles::Article.where(category_id: @current_menu.id).last
          @pictures = @service.get_all_pictures_by_album
        end
      end
    end
  end
end