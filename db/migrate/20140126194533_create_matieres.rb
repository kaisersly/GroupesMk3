class CreateMatieres < ActiveRecord::Migration
  def change
    create_table :matieres do |t|
      t.string :name, null: false
      t.string :code, null: false
      t.string :status
      t.integer :capacity, null: false
      t.references :formation, null: false, index: true

      t.timestamps
    end
  end
end
