class AddCodeToProvinces < ActiveRecord::Migration[5.2]
  def change
    add_column :provinces, :code, :integer
  end
end
