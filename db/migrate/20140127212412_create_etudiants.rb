class CreateEtudiants < ActiveRecord::Migration
  def change
    create_table :etudiants do |t|
      t.string :code
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps
    end
    add_index :etudiants, [:code], unique: true
  end
end
