class Quote < ActiveRecord::Base
  belongs_to :stock

  require 'csv'

  class << self

  	# Retrieve current pricing for all stocks in the stocks table, and
    # put it in the quotes table
	  def update_prices
	  	stocks = Stock.all.map { |s| s.code + '.nz' }.join(',') # XRO.nz,WHS.nz etc
	  	url = URI.parse("http://download.finance.yahoo.com/d/quotes.csv?s=#{stocks}&f=sl1t1d1p")
		  req = Net::HTTP::Get.new(url.to_s)
		  res = Net::HTTP.start(url.host, url.port) { |http| http.request(req) }

      puts res.body
  		quotes = CSV.parse(res.body)

  		quotes.each { |quote| update_price quote }
    end

    def update_price(quote)
      code = quote[0].split('.')[0] # Remove suffix, e.g. 'XRO.NZ' => 'XRO'
      price = quote[1]
  