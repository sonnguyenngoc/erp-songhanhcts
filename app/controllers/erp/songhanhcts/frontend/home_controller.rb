module Erp
  module Songhanhcts
    module Frontend
      class HomeController < Erp::Frontend::FrontendController
        def index
          @sliders = Erp::Banners::Banner.get_home_sliders
          @newest_blogs = Erp::Articles::Article.newest_articles(4)
          @testimonials = Erp::Testimonials::Testimonial.get_testimonials
        end
      end
    end
  end
end