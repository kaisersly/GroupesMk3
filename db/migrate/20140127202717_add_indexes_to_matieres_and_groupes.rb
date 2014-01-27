class AddIndexesToMatieresAndGroupes < ActiveRecord::Migration
  def change
  	add_index :matieres, [:name, :formation_id], unique: true
  	add_index :groupes, [:name, :matiere_id], unique: true
  end
end
