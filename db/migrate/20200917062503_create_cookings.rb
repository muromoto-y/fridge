class CreateCookings < ActiveRecord::Migration[6.0]
  def change
    create_table :cookings do |t|
      t.string  :cooking_name, null: false
      t.text    :explanation , null: false
      t.string  :ingredients1, null: false
      t.string  :quantity1   , null: false
      t.string  :ingredients2
      t.string  :quantity2   
      t.string  :ingredients3
      t.string  :quantity3   
      t.string  :ingredients4
      t.string  :quantity4   
      t.string  :ingredients5
      t.string  :quantity5   
      t.string  :ingredients6
      t.string  :quantity6   
      t.string  :ingredients7
      t.string  :quantity7   
      t.string  :ingredients8
      t.string  :quantity8   
      t.string  :ingredients9
      t.string  :quantity9   
      t.string  :ingredients0
      t.string  :quantity0   
      t.integer :user_id     , foreign_key: true

      t.timestamps
    end
  end
end