require 'test_helper'

class StockTest < ActiveSupport::TestCase

  test "should get latest quote" do
    stock = stocks(:one)
    assert stock.latest_quote.created_at.to_date == Date.today
  end

  test "should give error when ther