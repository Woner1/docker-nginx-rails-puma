class AddProvinceCodeToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :provincecode, :integer
  end
end
