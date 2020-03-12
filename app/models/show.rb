class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    # Show.order(rating: :desc).limit(1)
    Show.where(rating: self.highest_rating)
  end

end