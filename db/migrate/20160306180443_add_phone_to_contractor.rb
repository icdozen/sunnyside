class AddPhoneToContractor < ActiveRecord::Migration
  def change
    add_column :contractors, :phone, :bigint
  end
end
