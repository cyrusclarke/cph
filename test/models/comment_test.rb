require 'test_helper'

class CommentTest < ActiveSupport::TestCase
	test "humanized rating" do  
	comment = FactoryGirl.create(:comment)
	expected = 'one star'
	actual = comment.humanized_rating
	assert_equal expected, actual
	end
end
