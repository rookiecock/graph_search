# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

stocks = Stock.create([
  {code: 'AIA', name: 'Auckland International Airport Limited'},
  {code: 'AIR', name: 'Air New Zealand Limited'},
  {code: 'ANZ', name: 'Australia & New Zealand Banking Group Limited'},
  {code: 'ARG', name: 'Argosy Property Limited Ordinar'},
  {code: 'ATM', name: 'A2 