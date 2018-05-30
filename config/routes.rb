Erp::Songhanhcts::Engine.routes.draw do
  root to: "frontend/comming_soon#index"
  get "trang-chu.html" => "frontend/home#index", as: :home
end