class Quote < ActiveRecord::Base
  belongs_to :stock

  require 'csv'

  class <<