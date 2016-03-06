class Volume < ActiveRecord::Base

  validates :title, presence: true
  validates :no, presence: true

  has_many :words, :inverse_of => :volumes

end
