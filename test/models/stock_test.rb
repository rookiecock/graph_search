require 'test_helper'

class StockTest < ActiveSupport::TestCase

  test "should get latest quote" do
    stock = stocks(:o