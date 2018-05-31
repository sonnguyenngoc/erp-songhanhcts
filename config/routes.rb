Erp::Songhanhcts::Engine.routes.draw do
  root to: "frontend/comming_soon#index"
  get "trang-chu.html" => "frontend/home#index", as: :home
  
  get "nganh-nghe/tu-van.html" => "frontend/service#index", as: :service
	get "nganh-nghe/tu-van/:service_id(/:title).html" => "frontend/service#detail", as: :service_detail
  
  get "tin-tuc.html" => "frontend/blog#news", as: :news
	get "tin-tuc/:news_id(/:title).html" => "frontend/blog#news_detail", as: :news_detail
  
  get "tuyen-dung.html" => "frontend/blog#recruitment", as: :recruitment
	get "tuyen-dung/:recruitment_id(/:title).html" => "frontend/blog#recruitment_detail", as: :recruitment_detail
	
	get "lien-he.html" => "frontend/information#contact_us", as: :contact_us
	post "lien-he.html" => "frontend/information#contact_us"
end