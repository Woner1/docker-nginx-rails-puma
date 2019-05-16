class RemoveProvinceIdFromCities < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :province_id, :integer
  end
end
