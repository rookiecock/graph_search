class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.references :s