class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, :inclusion => 1..5
  validates :guest, {uniqueness: {message: "can only make an appearance once person episode"}}
  

  
end
