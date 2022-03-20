# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(:username => "davidmandolini", :email => "david@test.com", :password => "password")
User.create!(:username => "jaywengrow", :email => "jay@test.com", :password => "password")
User.create!(:username => "batman", :email => "batman@test.com", :password => "password")
User.create!(:username => "hulk", :email => "hulk@test.com", :password => "password")
User.create!(:username => "santa", :email => "santa@test.com", :password => "password")
User.create!(:username => "test", :email => "test@test.com", :password => "password")

Group.create!(:name => "Cool Kids", :user_id => 1)
Group.create!(:name => "Alternative Adults", :user_id => 2)
Group.create!(:name => "Old 'n Bold", :user_id => 3)
Group.create!(:name => "Test", :user_id => 1)

UserGroup.create!(:user_id => 1, :group_id => 1)
UserGroup.create!(:user_id => 1, :group_id => 2)
UserGroup.create!(:user_id => 2, :group_id => 1)
UserGroup.create!(:user_id => 2, :group_id => 3)
UserGroup.create!(:user_id => 1, :group_id => 4)
UserGroup.create!(:user_id => 3, :group_id => 1)
UserGroup.create!(:user_id => 4, :group_id => 2)
UserGroup.create!(:user_id => 5, :group_id => 3)
UserGroup.create!(:user_id => 5, :group_id => 2)
UserGroup.create!(:user_id => 6, :group_id => 1)

Event.create!(:group_id => 1, :date => DateTime.new(2021, 3, 31), :name => "Horror Night", :user_id => 1, :status => "open")
Event.create!(:group_id => 1, :date => DateTime.new(2021, 4, 5), :name => "Guilty Pleasures", :user_id => 2, :status => "open")
Event.create!(:group_id => 2, :date => DateTime.new(2021, 4, 15), :name => "Sci-Fi Frenzy", :user_id => 4, :status => "open")
Event.create!(:group_id => 3, :date => DateTime.new(2021, 3, 25), :name => "Scary Sequels", :user_id => 5, :status => "open")
Event.create!(:group_id => 2, :date => DateTime.new(2021, 4, 21), :name => "Romance", :user_id => 1, :status => "open")

# Nomination.create!(:name => "Dumb and Dumber", :year => 1994, :rating => "PG-13", :user_id => 1, :event_id => 2)
# Nomination.create!(:name => "Star Wars", :user_id => 2, :event_id => 3)
# Nomination.create!(:name => "The Ring", :user_id => 1, :event_id => 1)
# Nomination.create!(:name => "Titanic", :user_id => 3, :event_id => 5)
# Nomination.create!(:name => "Matrix", :user_id => 3, :event_id => 3)
# Nomination.create!(:name => "The Proposal", :user_id => 5, :event_id => 5)
# Nomination.create!(:name => "Fast and Furious", :user_id => 5, :event_id => 2)
# Nomination.create!(:name => "Scream", :user_id => 4, :event_id => 1)

# Vote.create!(:user_id => 1, :nomination_id => 1)
# Vote.create!(:user_id => 2, :nomination_id => 7)
# Vote.create!(:user_id => 3, :nomination_id => 7)
# Vote.create!(:user_id => 2, :nomination_id => 1)
# Vote.create!(:user_id => 3, :nomination_id => 1)
# Vote.create!(:user_id => 1, :nomination_id => 2)
# Vote.create!(:user_id => 4, :nomination_id => 5)
# Vote.create!(:user_id => 5, :nomination_id => 5)
# Vote.create!(:user_id => 1, :nomination_id => 3)
# Vote.create!(:user_id => 2, :nomination_id => 3)
# Vote.create!(:user_id => 3, :nomination_id => 8)
