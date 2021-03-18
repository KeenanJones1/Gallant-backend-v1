require 'test_helper'
require 'date'
# an assertion can ask:
# does this value = that value?
# is this object nil?
# does this line of code throw an exception?
# is the user's password greater than 5 characters?

# Every test may contain one or more assertions, with no restriction as to how many assertions are allowed. Only when all the assertions are successful will the test pass.



class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  user = User.new
  user1 = User.new(first_name: "X", birth_date: "2012-12-03")

  def test_the_truth
    assert true
  end

 def test_user_has_first_name
  user1 = User.new(first_name: "X", birth_date: "2012-12-03")
  user = User.new
  assert_not user.save, "Saved the user without first_name"
  assert_not_equal( 0, user1.first_name.length, "First name has to be greater than 1 letter")
  assert_match(/[A-Z]/i, user1.first_name, "First name must contain only letters")
 end

 def test_user_birth_day
  user1 = User.new(first_name: "X", birth_date: "2012-12-03")
  # make sure this regex is implemented in the controller. 
  assert_match(/^\d{4}-\d{2}-\d{2}$/, user1.birth_date)
  
  # assert_not user.save, "Please check user first name"
 end


  
end
