class AddStatusToLists < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :status, :string
  end
end
