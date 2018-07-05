require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'no cycle' do
    assert_false Exercise.new().contain_loops([30, 75], [0, 50], [60, 150])
  end
  test 'simple cycle ' do
    assert_true Exercise.new().contain_loops([30, 75], [75,30])
  end

  test 'complex cycle ' do
    assert_true Exercise.new().contain_loops([30, 75], [75,100], [100,30])
  end

  test 'complex cycle  with extra element' do
    assert_true Exercise.new().contain_loops([30, 75], [1, 2], [75,100], [100,30])
  end
end
