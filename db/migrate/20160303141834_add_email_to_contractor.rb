class AddEmailToContractor < ActiveRecord::Migration
  def change
    add_column :contractors, :email, :string
    add_column :contractors, :username, :string
    add_column :contractors, :password, :string
  end
end
