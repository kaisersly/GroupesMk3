class Choice < ActiveRecord::Base
	validates :matiere_id, uniqueness: { scope: :etudiant_id, message: "An Etudiant can only make one choice per Matiere" }
end
