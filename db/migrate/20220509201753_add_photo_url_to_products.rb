class AddPhotoUrlToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :photo_url, :string
  end
end
