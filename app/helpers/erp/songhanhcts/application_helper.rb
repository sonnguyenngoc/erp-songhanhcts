module Erp
  module Songhanhcts
    module ApplicationHelper
      # page title helper
      def title(page_title)
        content_for :title, page_title.to_s
      end
      
      # about link
      def about_link(about)
        erp_songhanhcts.about_us_path(about.id, title: url_friendly(about.name))
      end
      
      # service link
      def service_level_1_link(service)
        erp_songhanhcts.service_level_1_path(service.id, title: url_friendly(service.name))
      end
      
      def service_level_2_link(service)
        erp_songhanhcts.service_level_2_path(parent_name: url_friendly(service.parent_name), cat_id: service.id, title: url_friendly(service.name))
      end
      
      def service_detail_link(service_detail)
        erp_songhanhcts.service_detail_path(parent_name: url_friendly(service_detail.parent_name), cat_id: service_detail.id, title: url_friendly(service_detail.name))
      end
      
      # partner link
      def partner_link(partner)
        erp_songhanhcts.partner_detail_path(partner.id, title: partner.alias)
      end
      
      # article link
      def article_link(article)
        erp_songhanhcts.news_detail_path(article.id, title: url_friendly(article.name))
      end
      
      # recruitment link
      def recruitment_link(recruitment)
        erp_songhanhcts.recruitment_detail_path(recruitment.id, title: url_friendly(recruitment.name))
      end
      
      # identity link
      def identity_link(identity)
        erp_songhanhcts.identity_detail_path(identity.id, title: url_friendly(identity.name))
      end
      
      # user avatar
      def article_image(thumb, size)
        if size == 'large'
          thumb.present? ? thumb : url_for('/songhanhcts/images/blog/848_339.png')
        elsif size == 'medium'
          thumb.present? ? thumb : url_for('/songhanhcts/images/blog/360_252.png')
        elsif size == 'small'
          thumb.present? ? thumb : url_for('/songhanhcts/images/blog/80_80.png')
        end
      end
    end
  end
end
