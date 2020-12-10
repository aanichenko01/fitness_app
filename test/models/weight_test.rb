require 'test_helper'

class WeightTest < ActiveSupport::TestCase
  
  #Creates a user to associate weight to
  setup do
    @user = users(:one)
  end
  
  test 'should not save empty weight' do
    weight = Weight.new

    weight.save
    refute weight.valid?
  end

  test 'should save valid weight' do
    weight = Weight.new

    weight.date = 2001-01-01
    weight.weight = 80.2
    weight.user = @user

    weight.save
    assert weight.valid?
  end

  test 'should get earliest date entry' do

    weightOne = Weight.new
    weightOne.date = '01-12-2020'
    weightOne.weight = 100.2
    weightOne.user = @user
    weightOne.save

    weightTwo = Weight.new
    weightTwo.date = '14-12-2020'
    weightTwo.weight = 80.2
    weightTwo.user = @user
    weightTwo.save

    assert_equal(weightOne, Weight.first_weight(@user))
  end 

  test 'should get latest date entry' do

    weightOne = Weight.new
    weightOne.date = '01-12-2020'
    weightOne.weight = 100.2
    weightOne.user = @user
    weightOne.save

    weightTwo = Weight.new
    weightTwo.date = '14-12-2020'
    weightTwo.weight = 80.2
    weightTwo.user = @user
    weightTwo.save

    assert_equal(weightTwo, Weight.current_weight(@user))
  end 

  test 'should get weight loss' do
    weightOne = Weight.new
    weightOne.date = '01-12-2020'
    weightOne.weight = 85.2
    weightOne.user = @user
    weightOne.save

    weightTwo = Weight.new
    weightTwo.date = '14-12-2020'
    weightTwo.weight = 80.2
    weightTwo.user = @user
    weightTwo.save

    assert_equal(-5.0, Weight.weight_difference(@user))
  end 

  test 'should get weight gain' do
    weightOne = Weight.new
    weightOne.date = '01-12-2020'
    weightOne.weight = 80.2
    weightOne.user = @user
    weightOne.save

    weightTwo = Weight.new
    weightTwo.date = '14-12-2020'
    weightTwo.weight = 85.2
    weightTwo.user = @user
    weightTwo.save

    assert_equal(5.0, Weight.weight_difference(@user))
  end
  
end
