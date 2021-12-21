class AddNameToStores < ActiveRecord::Migration[6.1]
  def change
    add_column :stores, :name, :string
    add_column :stores, :address, :string
    add_column :stores, :phone_number, :string
    add_column :stores, :admin, :boolean, default: false
  end
end
