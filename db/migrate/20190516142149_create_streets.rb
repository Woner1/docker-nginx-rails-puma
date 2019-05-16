class CreateStreets < ActiveRecord::Migration[5.2]
  def change
    create_table :streets do |t|
      t.integer :code
      t.string :name
      t.integer :areacode
      t.integer :citycode
      t.integer :provincecode

      t.timestamps
    end
  end
end
