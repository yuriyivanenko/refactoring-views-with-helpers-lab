class Artist < ActiveRecord::Base
  has_many :songs
  validates :name, uniqueness: true
end
