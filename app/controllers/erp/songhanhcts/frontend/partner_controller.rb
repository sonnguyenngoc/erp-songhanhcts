module Erp
  module Songhanhcts
    module Frontend
      class PartnerController < Erp::Frontend::FrontendController
        def index
          @cooperative_article = Erp::Articles::Article.get_all_cooperative_customers.first
        end
        
        def detail
            if params[:partner_id].present?
              @partner = Erp::Partners::Partner.find(params[:partner_id])
            end
        end
      end
    end
  end
end