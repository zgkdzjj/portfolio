class Port < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :main_image, presence: true
  validates :thumb_image, presence: true

  def self.angular 
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on rails')}

end
