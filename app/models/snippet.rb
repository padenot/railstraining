class Snippet < ActiveRecord::Base
    validates :content, :presence => true
# a title must exist, and its length shall be at least 2 characters.
    validates :title, :presence => true,
		     :length => { :minimum => 2 }
validates_inclusion_of :language, :in => ["cpp", "c", "ruby", "python"]
end


