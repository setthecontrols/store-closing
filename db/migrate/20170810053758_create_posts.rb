class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone_number
      t.string :tag
      t.date :close_date
      t.text :description
      t.references :user

      t.timestamps
    end
  end
end
