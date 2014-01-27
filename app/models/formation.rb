class Formation < ActiveRecord::Base
	has_many :matieres, dependent: :destroy
	validates :status, inclusion: { in: ["opened", "closed"], message: "%{value} is not a valid status" }
	validates :name, presence: true
	validates :name, uniqueness: true

	extend Paginated
end
