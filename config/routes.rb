Erp::Songhanhcts::Engine.routes.draw do
  root to: "frontend/comming_soon#index"
  get "trang-chu.html" => "frontend/home#index", as: :home
  
  get "gioi-thieu.html" => "frontend/information#about_us", as: :about_us
  
  get "linh-vuc-hoat-dong/:cat_id(/:title).html" => "frontend/service#service_level_1", as: :service_level_1
	get "linh-vuc-hoat-dong(/:parent_name)/:cat_id(/:title).html" => "frontend/service#service_level_2", as: :service_level_2
	
	get "doi-tac-lien-ket.html" => "frontend/partner#index", as: :partners
	get "doi-tac-lien-ket/:partner_id(/:title).html" => "frontend/partner#detail", as: :partner_detail
  
  get "tin-tuc.html" => "frontend/blog#news", as: :news
	get "tin-tuc/:news_id(/:title).html" => "frontend/blog#news_detail", as: :news_detail
	get "tin-tuc/chu-de/:cat_id(/:title).html" => "frontend/blog#news", as: :blog_with_category
  
  get "tuyen-dung.html" => "frontend/blog#recruitment", as: :recruitment
	get "tuyen-dung/:recruitment_id(/:title).html" => "frontend/blog#recruitment_detail", as: :recruitment_detail
	
	get "lien-he.html" => "frontend/information#contact_us", as: :contact_us
	post "lien-he.html" => "frontend/information#contact_us"
end