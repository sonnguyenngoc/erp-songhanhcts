module Erp
  module Songhanhcts
    module Frontend
      class BlogController < Erp::Frontend::FrontendController
        def news
          @blogs = Erp::Articles::Article.get_all_blogs(params).paginate(:page => params[:page], :per_page => 5)
          @categories = Erp::Articles::Category.get_categories_by_alias_blog
          @newest_blogs = Erp::Articles::Article.newest_articles(5)
          if params[:cat_id].present?
            @category = Erp::Articles::Category.find(params[:cat_id])
          end
        end
        
        def news_detail
          @blog = Erp::Articles::Article.find(params[:news_id])
          @blog.increase_visit # cap nhat luot xem
          @blog = @blog
          @meta_keywords = @blog.meta_keywords
          @meta_description = @blog.meta_description
          @categories = Erp::Articles::Category.get_categories_by_alias_blog
          @newest_blogs = Erp::Articles::Article.where.not(id: @blog.id).newest_articles(10)
        end
        
        def recruitment
          @recruitments = Erp::Articles::Article.get_all_careers(params).paginate(:page => params[:page], :per_page => 5)
        end
        
        def recruitment_detail
          @recruitment = Erp::Articles::Article.find(params[:recruitment_id])
          @recruitment.increase_visit # cap nhat luot xem
          @recruitment = @recruitment
          @meta_keywords = @recruitment.meta_keywords
          @meta_description = @recruitment.meta_description
          @newest_careers = Erp::Articles::Article.where.not(id: @recruitment.id).newest_careers(10)
        end
      end
    end
  end
end