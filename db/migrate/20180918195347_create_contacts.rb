class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :title
      t.string :pro_designation
      t.string :company
      t.string :location
      t.string :phone
      t.string :website
      t.string :linked_in
      t.string :facebook
      t.string :twitter
      t.string :other_social
      t.text :notes
      t.string :avatar
      t.integer :user_id

      t.timestamps
    end
  end
end
