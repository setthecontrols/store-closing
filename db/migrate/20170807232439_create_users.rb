class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.text :user_id
      t.text :email
      t.text :password_digest

      t.timestamps
    end
  end
end
