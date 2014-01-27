module Paginated
	def paginated(page, limit = GroupesMk3::Application.config.pagination_default_limit)
		offset((page - 1) * limit).limit(limit)
	end
end