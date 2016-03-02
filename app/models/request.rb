class Request < ActiveRecord::Base
  enum status: { Pending: 0, Aproved: 1, Denied:2 }
  belongs_to :book
  belongs_to :user
  validates :from_date, :to_date, presence: true
  validate :is_in_use?
  validates :book, presence: true

  def is_in_use?
    unless self.class.where(from_date: from_date..to_date, status: 1).where.not(id: self.id).empty? && self.class.where(to_date: from_date..to_date, status: 1).where.not(id: self.id).empty?
      errors.add(:atention, ": The book in this dates is not available")
    end
  end
end

