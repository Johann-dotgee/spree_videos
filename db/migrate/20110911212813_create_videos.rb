class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :spree_videos do |t|
      t.string :title
      t.string :url
      t.string :reference
      t.string :hebergeur
      t.integer :product_id
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :spree_videos
  end
end
