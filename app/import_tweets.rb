require 'csv'

class ImportTweets < ActiveRecord::Base
  CSV.read('/home/liufeng/tweets.csv').reverse_each do |row|
    id = row[0]
    created_at = DateTime.parse(row[5]).to_time
    text = row[7]
    puts "#{id}" #{created_at} #{text}"
    Tweet.create(:id => id, :created_at => created_at, :content => text)
  end
end
