class ReferenceStocksTable < ActiveRecord::Migration
  def change
  	change_table(:watches) do |t|
  	  t.