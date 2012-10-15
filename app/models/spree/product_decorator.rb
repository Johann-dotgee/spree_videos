module Vids
  def vids
    self.videos.all(:order => 'position').map{|v| v = VideoInfo.new(v.url)}
  end
end
Spree::Product.class_eval do
  has_many :videos, :order => 'position ASC'
  include Vids
end