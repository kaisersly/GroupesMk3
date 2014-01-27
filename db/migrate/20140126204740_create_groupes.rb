class CreateGroupes < ActiveRecord::Migration
  def change
    create_table :groupes do |t|
      t.string :name
      t.string :schedule
      t.string :weekday
      t.string :teacher
      t.string :location
      t.text :additional
      t.references :matiere, index: true

      t.timestamps
    end
  end
end
