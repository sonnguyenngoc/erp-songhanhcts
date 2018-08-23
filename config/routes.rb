Erp::Songhanhcts::Engine.routes.draw do
  root to: "frontend/comming_soon#index"
  get "trang-chu.html" => "frontend/home#index", as: :home
  
  get "gioi-thieu.html" => "frontend/about_us#about_us", as: :about_us
  get "gioi-thieu/nhan-dien-thuong-hieu/:identity_id(/:title).html" => "frontend/about_us#identity_detail", as: :identity_detail
  
  # linh vuc hoat dong / menu cap 1 va menu cap 2
  get "linh-vuc-hoat-dong(/:title-s1c:cat_id).html" => "frontend/service#index_style_1", as: :service_index_style_1
	get "linh-vuc-hoat-dong(/:parent_name)(/:title-s2c:cat_id).html" => "frontend/service#index_style_2", as: :service_index_style_2
	
	# chi tiet cua linh vuc hoat dong / bai viet style 1, 2 va 3
	get "linh-vuc-hoat-dong/chi-tiet(/:current_menu_name)(/:title-s1c(:cat_id)a:article_id).html" => "frontend/service#detail_style_1", as: :service_detail_style_1
	get "linh-vuc-hoat-dong/chi-tiet(/:parent_name)(/:title-s2c(:cat_id)a:article_id).html" => "frontend/service#detail_style_2", as: :service_detail_style_2
	get "linh-vuc-hoat-dong/chi-tiet(/:parent_name)(/:title-s3c(:cat_id)a0).html" => "frontend/service#detail_style_3", as: :service_detail_style_3	
	
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