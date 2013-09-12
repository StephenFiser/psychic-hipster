class Purchase < ActiveRecord::Base
	attr_accessible :status
	STATUSES = %w(in_progress submitted approved shipped received)

	class << self
		STATUSES.each do |status|
			define_method("all_#{status}") do
				where(status: status)
			end
		end
	end
	
end
