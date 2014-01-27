# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Formation.delete_all
formations = [
	"Licence Droit 1ère année",
	"Licence Droit 2ème année",
	"Licence Droit 3ème année",
	"Licence AES 1ère année",
	"Licence AES 2ème année",
	"Licence AES 3ème année"
]
matieres = [
	"Droit privé",
	"Droit public",
	"Histoire du droit",
	"Anglais",
	"Informatique - C2I"
]
formations.each do |formation_name|
	formation = Formation.create(name: formation_name, status: "opened")
	matieres.each do |matiere_name|
		matiere = Matiere.create(name: matiere_name, code: matiere_name, capacity: 10, formation: formation)
		5.times do |i|
			Groupe.create(name: "Groupe #{i}", matiere: matiere)
		end
	end
end