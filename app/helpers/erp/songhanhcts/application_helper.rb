module Erp
  module Songhanhcts
    module ApplicationHelper
      # page title helper
      def title(page_title)
        content_for :title, page_title.to_s
      end
      
      # article link
      def article_link(article)
        erp_songhanhcts.news_detail_path(article.id, title:  url_friendly(article.name))
      end
      
      # recruitment link
      def recruitment_link(article)
        erp_songhanhcts.recruitment_detail_path(recruitment.id, title:  url_friendly(recruitment.name))
      end
    end
  end
end
