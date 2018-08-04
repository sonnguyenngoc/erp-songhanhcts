module Erp
  module Songhanhcts
    module Frontend
      class AboutUsController < Erp::Frontend::FrontendController
        def about_us
          #@about = Erp::Articles::Article.get_all_abouts.find(params[:about_id])
          @about = Erp::Articles::Article.get_all_abouts.last
          @leaders = Erp::Corporators::Corporator.all_active.get_leadership_corporators.order('erp_corporators_corporators.custom_order asc')
          @company_structure = Erp::Articles::Article.get_all_company_structure.last
          @meta_keywords = @about.meta_keywords
          @meta_description = @about.meta_description
        end
        
        def identity_detail
          @identity = Erp::Articles::Article.get_all_identities.find(params[:identity_id])
          @pictures = @identity.get_all_pictures_by_album
          @meta_keywords = @identity.meta_keywords
          @meta_description = @identity.meta_description
        end
        
      end
    end
  end
end