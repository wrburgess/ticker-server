class Dashboard < ActiveRecord::Base
  validates_presence_of :title

  has_many :zones
  # belongs_to :user
end