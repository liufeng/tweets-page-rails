require 'csv'

class ImportTweets < ActiveRecord::Base
  CSV.read('/tmp/tweets.csv').reverse_each do |row|
    tweet_id = row[0]
    in_reply_to_status_id = row[1]
    in_reply_to_user_id = row[2]
    retweeted_status_id = row[3]
    retweeted_status_user_id = row[4]
    created_at = DateTime.parse(row[5]).to_time
    source = row[6]
    text = row[7]
    expanded_urls = row[8]

    puts "#{tweet_id}"
    Tweet.create(:id => tweet_id,
                 :created_at => created_at,
                 :text => text)
  end
end
