class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.belongs_to :customer, index: true
      t.string :address
      t.string :scope

      t.timestamps
    end
  end
end
