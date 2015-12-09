class Place < ActiveRecord::Base
	paginates_per 1
	belongs_to :user
end
