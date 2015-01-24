class AddAddressAndContactToUser < ActiveRecord::Migration
  def change
    add_column :users, :address, :text
    add_column :users, :contact, :varchar
  end
end
