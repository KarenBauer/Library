require "rails_helper"

RSpec.describe Comment, :type => :model do
	it "Don't save null comments" do
		comment = Comment.new
		expect(comment.save.should).to eq(false)
	end
end
