class CreateServiceAreas < ActiveRecord::Migration
  def change
    create_table :service_areas do |t|
      t.float :lat
      t.float :long
      t.string :scope
      t.float :radi

      t.timestamps
    end
  end
end
