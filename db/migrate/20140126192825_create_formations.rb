class CreateFormations < ActiveRecord::Migration
  def change
    create_table :formations do |t|
      t.string :name, null: false
      t.string :status, null: false

      t.timestamps
    end
  end
end
