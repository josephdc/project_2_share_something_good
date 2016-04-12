# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all

Category.create(topic:"Because it's Friday")
Category.create(topic:"Weddings")
Category.create(topic:"Engagements")
Category.create(topic:"Graduations")
Category.create(topic:"Sobriety")
Category.create(topic:"Baby")
Category.create(topic:"Volunteer")
Category.create(topic:"Family")
Category.create(topic:"Friends")
Category.create(topic:"Personal Achievement(s)")
