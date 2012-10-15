Deface::Override.new(
  :virtual_path     => "spree/admin/shared/_product_tabs",
  :name             => "addd_videos_product_tabs",
  :insert_after     => "[data-hook='admin_product_tabs'] li:first",
  :partial          => "spree/shared/videos_product_tabs",
  :disabled         => false
)

Deface::Override.new(
  :virtual_path   => "spree/products/show",
  :name           => "add_videos_to_product_aaa",
  :insert_after   => "[data-hook='product_images']",
  :text           => "<div id='product-videos' data-hook='product_videos'><div id='main-video' data-hook> <%= render 'video', :product => @product %> </div> </div>",
  :disabled       => false
)
