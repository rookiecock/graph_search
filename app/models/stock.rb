class Stock < ActiveRecord::Base

  def label
    "#{code} [#{name}]"
  end

  # The most recent quote for this 