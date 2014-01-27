class CreateEtudiants < ActiveRecord::Migration
  def change
    create_table :etudiants do |t|
      t.string :code
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.string :email

      t.timestamps
    end
    add_index :etudiants, [:code], unique: true
  end
end
