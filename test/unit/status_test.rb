require 'test_helper'

class StatusTest < ActiveSupport::TestCase
   test "that a status required content" do
     status = Status.new
     assert !status.save
     assert !status.errors[:content].empty?
   end

   test "that status content is at least 2 letters long" do
   	status = Status.new
   	status.content = "A"
   	assert !status.save
   	assert !status.errors[:content].empty?
   end

   test "that a status has a usr id" do
   	status = Status.new
   	assert !status.save
   	assert !status.errors[:user_id].empty?
   end
end
