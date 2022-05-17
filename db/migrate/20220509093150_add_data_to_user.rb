class AddDataToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :DOB, :date
    add_column :users, :gender, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
  end
end
