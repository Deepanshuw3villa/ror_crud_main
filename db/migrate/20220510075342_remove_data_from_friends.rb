class RemoveDataFromFriends < ActiveRecord::Migration[6.1]
  def change
    remove_column :friends, :gender, :string
    remove_column :friends, :role, :string

  end
end
