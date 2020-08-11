class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def print_date
    self.date.strftime('%B %d, %Y')
  end

  def print_num_and_date
    "Episode #{self.number} - #{self.print_date}"
  end

  def average_rating
    ratings = self.appearances.map(&:rating)

    (ratings.sum.to_f / ratings.length).round(1)
  end
end
