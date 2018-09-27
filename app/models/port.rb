class Port < ApplicationRecord
  include Placeholder
  validates :title, :body, :main_image, :thumb_image, presence: true
  after_initialize :set_default

  def self.angular 
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on rails')}

  def set_default
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end

end
