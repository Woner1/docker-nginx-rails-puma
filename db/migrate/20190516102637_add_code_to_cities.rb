class AddCodeToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :code, :integer
  end
end
