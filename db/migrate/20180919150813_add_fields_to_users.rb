class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :location, :string
    add_column :users, :title, :string
    add_column :users, :avatar, :string
  end
end
