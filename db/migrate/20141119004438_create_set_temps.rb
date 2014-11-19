class CreateSetTemps < ActiveRecord::Migration
  def change
    create_table :set_temps do |t|
      t.integer :mode, :temp
      t.timestamps
    end
  end
end
