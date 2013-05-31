# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Tenzin Nyima", email: "tenzin@ciaotelecom.com", password: "ciao2013", password_confirmation: "ciao2013", is_admin: true)
User.create(name: "Jonathan Golden", email: "jonathan@ciaotelecom.net", password: "ciao2013", password_confirmation: "ciao2013", is_admin: true)
User.create(name: "Aldi Zhupani", email: "aldi.zhupani@ciaotelecom.com", password: "ciao2013", password_confirmation: "ciao2013", is_admin: false)

Category.create([
                {name: "Tech/IT"},
                {name: "PortaOne Issues"},
                {name: "Human Resources"},
                {name: "Other"},
                ])

TicketStatus.create([{name: "Open", position: 1},{name: "Closed", position: 2}])