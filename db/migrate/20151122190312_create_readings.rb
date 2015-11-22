class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.integer :state
      t.integer :set_temp
      t.decimal :temp_f, precision: 6, scale: 3

      t.timestamps
    end

    add_index :readings, :created_at
  end
end
