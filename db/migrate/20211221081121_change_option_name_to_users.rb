class ChangeOptionNameToUsers < ActiveRecord::Migration[6.1]
  def change
     change_column :users, :name, :string, null: false
     change_column :users, :status, :integer, null: false
     change_column :users, :age, :integer, null: false
     change_column :users, :address, :string, null: false
     change_column :users, :phone_number, :string, null: false
  end
end
