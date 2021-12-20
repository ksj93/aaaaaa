class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :profile, :text
    add_column :users, :status, :integer
    add_column :users, :age, :integer
    add_column :users, :address, :string
    add_column :users, :phone_number, :string
  end
end
