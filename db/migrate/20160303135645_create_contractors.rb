class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :name
      t.string :address
      t.string :scope

      t.timestamps
    end
  end
end
