FactoryGirl.define do
	factory :comment do
		rating '1_star' 
	end

	factory :user do
		email { |n| "example-#{n}@example.com" } 
		password 'password123'	
	end

	factory :place do
		name "cyrus home"
		address "43 haderslevgade, copenhagen, 1651"
		description "my new home"
	end


end

