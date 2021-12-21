class ChangeOptionNameToStores < ActiveRecord::Migration[6.1]
  def change
    change_column :stores, :name, :string, null: false
    change_column :stores, :address, :string, null: false
    change_column :stores, :phone_number, :string, null: false
  end
end
