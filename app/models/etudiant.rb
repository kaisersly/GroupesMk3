class Etudiant < ActiveRecord::Base
	validates :firstname, :lastname, presence: true
	validates :code, uniqueness: true
end
