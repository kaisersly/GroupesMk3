class Groupe < ActiveRecord::Base
  belongs_to :matiere	
  validates :name, :matiere_id, presence: true
 	validates :name, uniqueness: { scope: :matiere_id }
	validates :capacity, numericality: true	
	validates :status, inclusion: { in: ["opened", "closed", nil], message: "%{value} is not a valid status" }

	extend Paginated
end
