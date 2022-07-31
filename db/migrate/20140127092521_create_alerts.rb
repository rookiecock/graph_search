class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.references :watch, index: true

      t.belongs_to