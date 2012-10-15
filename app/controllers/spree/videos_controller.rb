module Spree
  class VideosController < BaseController
    
    def index
      @videos = Video.all(:joins => :product, :conditions => 'spree_products.deleted_at is NULL')

      respond_to do |format|
        format.html # index.html.erb
      end
    end

    def product_index
      @product = Product.find_by_permalink(params[:product_id])
      @videos = @product.videos.all(:order => 'position')

      respond_to do |format|
        format.html # index.html.erb
      end
    end

    def show
      video = Video.find(params[:id])
      @video = VideoInfo.new(video.url, {:iframe_attributes => {:width => 600, :height => 400}})
      respond_to do |format|
        format.html # show.html.erb
      end
    end

  end
end
