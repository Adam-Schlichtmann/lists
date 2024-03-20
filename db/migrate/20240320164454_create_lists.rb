class CreateLists < ActiveRecord::Migration[7.1]
  def change
    create_table :lists do |t|
      t.string :title
      t.text :description
      t.string :color

      t.timestamps
    end
  end
end
