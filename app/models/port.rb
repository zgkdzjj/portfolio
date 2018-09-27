class Port < ApplicationRecord
  validates :title, :body, :main_image, :thumb_image, presence: true
  after_initialize :set_default

  def self.angular 
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on rails')}

  def set_default
    self.main_image ||= 'https://via.placeholder.com/600*400'
    self.thumb_image ||= 'https://via.placeholder.com/350x200'
  end

end
