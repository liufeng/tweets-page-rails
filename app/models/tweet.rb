class Tweet < ActiveRecord::Base
  attr_accessible :id, :text, :created_at
end
