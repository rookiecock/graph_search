class Stock < ActiveRecord::Base

  def label
    "#{code} [#{name}]"
  end

  # The most recent quote for this stock
  def latest_quote
    Quote.where(
      'stock_id = ? 