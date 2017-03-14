class Person < ApplicationRecord
  has_many :cars
end

# here is where i could write a sql query that overrides all the other search functions

# def self.by_created
  #order(created_at: :desc)


# defining the self method I use to search for sql query

# def self.some_crazy_query(color)
# select('first_name', last_name)
#
#
#
#
#
#
#
#
#
