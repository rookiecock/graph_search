class AddPrevCloseAndLastTradeTimeToQuote < ActiveRecord::Migration
  def change
    add_column :quotes, :last_trade_time, :datetime
    ad