Erp::Songhanhcts::Engine.routes.draw do
  root to: "frontend/comming_soon#index"
  get "trang-chu.html" => "frontend/home#index", as: :home
  
  get "gioi-thieu.html" => "frontend/about_us#about_us", as: :about_us
  get "gioi-thieu/nhan-dien-thuong-hieu/:identity_id(/:title).html" => "frontend/about_us#identity_detail", as: :identity_detail
  
  get "linh-vuc-hoat-dong/:cat_id(/:title).html" => "frontend/service#service_level_1", as: :service_level_1
	get "linh-vuc-hoat-dong(/:category_name)/:article_id(/:title).html" => "frontend/service#service_detail", as: :service_detail
	get "linh-vuc-hoat-dong(/:parent_name)/:cat_id(/:title).html" => "frontend/service#service_level_2", as: :service_level_2
	
	get "chuoi-he-thong/doi-tac-lien-ket.html" => "frontend/partner#index", as: :partners
	get "chuoi-he-thong/doi-tac-lien-ket/:partner_id(/:title).html" => "frontend/partner#detail", as: :partner_detail
	get "chuoi-he-thong/mang-luoi-phan-phoi.html" => "frontend/partner#distribution_network", as: :distribution_network
  
  get "tin-tuc.html" => "frontend/blog#news", as: :news
	get "tin-tuc/:news_id(/:title).html" => "frontend/blog#news_detail", as: :news_detail
	get "tin-tuc/chu-de/:cat_id(/:title).html" => "frontend/blog#news", as: :blog_with_category
  
  get "tuyen-dung.html" => "frontend/blog#recruitment", as: :recruitment
	get "tuyen-dung/:recruitment_id(/:title).html" => "frontend/blog#recruitment_detail", as: :recruitment_detail
	
	get "lien-he.html" => "frontend/contact_us#index", as: :contact_us
	post "lien-he.html" => "frontend/contact_us#index"
end