class Tweet < ActiveRecord::Base
  attr_accessible :id, :text, :created_at
  validate :id, :created_at, :presence => true

  paginates_per 50
end
