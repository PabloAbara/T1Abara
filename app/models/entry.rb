class Entry < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :downtitle, presence: true, length: {maximum: 20}
  validates :body, presence: true, length: {minimum: 20}
  before_create :set_visits_count
  has_many :comments


  def update_counter
      self.update(counter: self.counter+1)
  end

  private

  def set_visits_count
    self.counter ||= 0

  end

end
