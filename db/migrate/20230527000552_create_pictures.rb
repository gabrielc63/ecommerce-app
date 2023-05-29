class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.string :image_url
      t.references :product

      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
