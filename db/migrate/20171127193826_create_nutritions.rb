class CreateNutritions < ActiveRecord::Migration
  def up
    create_table :nutritions do |t|
      t.integer :height
      t.integer :weight
      t.integer :age
      t.integer :calories

      t.timestamps
    end
  end
  def down
      drop_table :nutritions
  end
end
