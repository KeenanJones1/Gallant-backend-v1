require 'test_helper'

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

  def test_the_truth
    assert true
  end

 def test_user_has_first_name
  user = User.new
  assert_not user.save, "Saved the user without first_name"
 end

 def test_user_first_name_chars
  user = User.new(first_name: "X", birth_date: "2012-12-03")
  # assert(user.first_name.length > 0, "First name has to be greater than 1 letter")
  # assert(user.first_name.match("[a-zA-Z]+") , "First name must contain only letters")
  # assert(user.birth_date.match(with: "^(?:0[1-9]|[12]\d|3[01])([\/.-])(?:0[1-9]|1[012])\1(?:19|20)\d\d$"))
  # assert_not user.save, "Please check user first name"
 end


  
end
