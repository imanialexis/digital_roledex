class CreateAffairContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :affair_contacts do |t|
      t.integer :contact_id
      t.integer :affair_id

      t.timestamps
    end
  end
end
