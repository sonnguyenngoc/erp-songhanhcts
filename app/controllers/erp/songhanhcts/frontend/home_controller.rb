module Erp
  module Songhanhcts
    module Frontend
      class HomeController < Erp::Frontend::FrontendController
        def index
          @newest_blogs = Erp::Articles::Article.newest_articles(4)
        end
      end
    end
  end
end