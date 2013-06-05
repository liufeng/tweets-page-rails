class Tweet < ActiveRecord::Base
  attr_accessible :id, :text, :created_at

  paginates_per 50
end
