class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, :numericality => { greater_than_or_equal_to: 0 }
  errors.add :name, :too_plain, message: "Sorry, that name isn't cool enough"
  has_many :employees
end
