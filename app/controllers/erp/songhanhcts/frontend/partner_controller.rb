module Erp
  module Songhanhcts
    module Frontend
      class PartnerController < Erp::Frontend::FrontendController
        def index          
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