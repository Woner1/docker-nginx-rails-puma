class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.integer :code
      t.string :name
      t.integer :citycode
      t.integer :provincecode

      t.timestamps
    end
  end
end
