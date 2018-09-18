class CreateAffairs < ActiveRecord::Migration[5.2]
  def change
    create_table :affairs do |t|
      t.string :name
      t.string :location
      t.string :website
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
