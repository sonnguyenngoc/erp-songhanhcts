class AddShowCaptionToErpBannersBanners < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_banners_banners, :show_caption, :boolean, default: false
  end
end
