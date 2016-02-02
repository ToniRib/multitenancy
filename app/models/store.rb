class Store < ActiveRecord::Base
  has_many :items
  validates :name, presence: true
  validates :url, presence: true, uniqueness: true

  before_validation :generate_url

  def generate_url
    self.url = name.parameterize
  end
end
