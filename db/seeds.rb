# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Job.destroy_all
Job.create name: "見習い戦士"

Field.destroy_all
field = Field.create name: "草原"

Monster.destroy_all
Monster.create name: "スライム", present_hp: 250, max_hp: 250, exp: 100, field_id: field.id

