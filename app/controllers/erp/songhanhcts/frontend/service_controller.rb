module Erp
  module Songhanhcts
    module Frontend
      class ServiceController < Erp::Frontend::FrontendController
        
        def index_style_1 # //Menu cap 1 /Linh vuc hoat dong
          if params[:cat_id].present?
            @current_menu = Erp::Articles::Category.find(params[:cat_id])
            @services = Erp::Articles::Article.where(category_id: @current_menu.id).where(parent_id: nil)
            @service = @services.last
            @meta_keywords = @service.meta_keywords if @service.present?
            @meta_description = @service.meta_description if @service.present?
          end
        end
        
        def index_style_2 # //Menu cap 2 /Linh vuc hoat dong
          if params[:cat_id].present?
            @current_menu = Erp::Articles::Category.find(params[:cat_id])
            @service = Erp::Articles::Article.where(category_id: @current_menu.id)
              .where(parent_id: nil).last
            @meta_keywords = @service.meta_keywords if @service.present?
            @meta_description = @service.meta_description if @service.present?
          end
        end
        
        def detail_style_1 # //Trang danh sach hinh anh
          @current_menu = Erp::Articles::Category.find(params[:cat_id])
          @service = Erp::Articles::Article.find(params[:article_id])
          @pictures = @service.get_all_pictures_by_album.order('erp_banners_banners.custom_order ASC')
          @meta_keywords = @service.meta_keywords if @service.present?
          @meta_description = @service.meta_description if @service.present?
        end
        
        def detail_style_2 # //Trang bai viet lien quan
          @current_menu = Erp::Articles::Category.find(params[:cat_id])
          @article = Erp::Articles::Article.find(params[:article_id])
          @meta_keywords = @article.meta_keywords if @article.present?
          @meta_description = @article.meta_description if @article.present?
        end
        
        def detail_style_3 # //Trang ho so nang luc
          @current_menu = Erp::Articles::Category.find(params[:cat_id])
          @service = Erp::Articles::Article.where(category_id: @current_menu.id).last
          
          @profile = Erp::Corporators::Corporator.find(@service.corporator_id) if @service.corporator.present?
          @profile_album = @profile.get_profile_albums if @profile.present?
          
          @meta_keywords = @service.meta_keywords if @service.present?
          @meta_description = @service.meta_description if @service.present?
        end
      end
    end
  end
end