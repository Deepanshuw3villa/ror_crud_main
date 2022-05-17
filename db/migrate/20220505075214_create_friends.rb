class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :fullname
      t.integer :phone
      t.text :body

      t.timestamps
    end
  end
end
