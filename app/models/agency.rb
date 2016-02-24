class Agency < ActiveRecord::Base
  has_many :reviews
  accepts_nested_attributes_for :reviews

  # It returns the articles whose titles contain one or more words that form the query
 def self.search(query)
   # where(:title, query) -> This would return an exact match of the query
   where("name like ?", "%#{query}%")
 end
end
