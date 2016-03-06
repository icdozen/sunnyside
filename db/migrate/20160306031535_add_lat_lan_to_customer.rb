class AddLatLanToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :Lat, :float
    add_column :customers, :Lan, :float
  end
end
