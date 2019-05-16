class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.belongs_to :province,index: true
      t.string :name,:limit => 15 
      
      t.timestamps
    end
  end
end
