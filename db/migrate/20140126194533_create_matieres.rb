class CreateMatieres < ActiveRecord::Migration
  def change
    create_table :matieres do |t|
      t.string :name
      t.string :code
      t.string :status
      t.integer :capacity
      t.references :formation, index: true

      t.timestamps
    end
  end
end
