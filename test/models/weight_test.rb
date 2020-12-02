require 'test_helper'

class WeightTest < ActiveSupport::TestCase
  
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
end