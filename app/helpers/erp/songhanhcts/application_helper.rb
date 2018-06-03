module Erp
  module Songhanhcts
    module ApplicationHelper
      # page title helper
      def title(page_title)
        content_for :title, page_title.to_s
      end
      
      # article link
      def article_link(article)
        erp_songhanhcts.news_detail_path(article.id, title: url_friendly(article.name))
      end
      
      # article link
      def partner_link(partner)
        erp_songhanhcts.partner_detail_path(partner.id, title: partner.alias)
      end
      
      # recruitment link
      def recruitment_link(recruitment)
        erp_songhanhcts.recruitment_detail_path(recruitment.id, title: url_friendly(recruitment.name))
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
