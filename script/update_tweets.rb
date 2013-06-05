require 'twitter'

USERNAME = 'liufeng'

class UpdateTweets < ActiveRecord::Base
  Twitter.configure do |config|
    config.consumer_key = '3TyYlUNcYNr4F8JDOzm0DQ'
    config.consumer_secret = 'morH9fiFrt04XoPAwGtLV3an2aRUjaRIcDLDTQYnKM'
    config.oauth_token = '7187272-Z2uyr7aXpUyhL36Gst3Q6ldg4PwwM7k9G1iLxlA'
    config.oauth_token_secret = 'TR6TA9EDR5N8G7nOSZWXvjhfZQfAmvHBfLIKnR5N2s'
  end
  
  Twitter.user_timeline(USERNAME, :count => 200).reverse.each do |tweet|
    if not Tweet.exists?(:id => tweet.id)
      Tweet.create(:id => tweet.id, :created_at => tweet.created_at, :text => tweet.text)
    end
  end
end
