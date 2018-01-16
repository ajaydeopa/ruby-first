module ApplicationHelper
	@@str = 'message'

	def update(str)
		@@str = str
	end

	def nav
		@@str
	end
end