class Quote < ActiveRecord::Base
  belongs_to :stock

  require 'csv'

  class << self

  	# Retrieve current pricing for all stocks in the stocks table, and
    # put it in the quotes table
	  def update_prices
	  	stocks = Stock.all.map { |s| s.code + '.nz' }.join(',') # XRO.nz,WHS.nz etc
	  	url = URI.parse("http://download.finance.yahoo.com/d/quotes.csv?s=#{stocks}&f=sl1t1d