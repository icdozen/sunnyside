class AddLatLanToContractor < ActiveRecord::Migration
  def change
    add_column :contractors, :Lat, :float
    add_column :contractors, :Lng, :float
  end
end
