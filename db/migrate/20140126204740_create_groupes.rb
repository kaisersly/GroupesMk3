class CreateGroupes < ActiveRecord::Migration
  def change
    create_table :groupes do |t|
      t.string :name, null: false
      t.string :schedule
      t.string :weekday
      t.string :teacher
      t.string :location
      t.text :additional
      t.references :matiere, null: false, index: true

      t.timestamps
    end
  end
end
