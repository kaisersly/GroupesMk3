class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :matiere_id, null: false
      t.integer :etudiant_id, null: false
      t.integer :groupe_id

      t.timestamps
    end
    add_index :choices, [:matiere_id, :etudiant_id], unique: true
  end
end
