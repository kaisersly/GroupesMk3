class Matiere < ActiveRecord::Base
  belongs_to :formation
  has_many :groupes, dependent: :destroy
	validates :name, :code, :capacity, :formation_id, presence: true
	validates :name, uniqueness: { scope: :formation_id }
	validates :status, inclusion: { in: ["opened", "closed", nil], message: "%{value} is not a valid status" }
	validates :capacity, numericality: true

	extend Paginated
end
