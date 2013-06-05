require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  test "tweet id and created_at must not be empty" do
    tweet = Tweet.new
    assert tweet.invalid?
    assert_match(/blank/, tweet.errors[:id].first)
    assert_match(/blank/, tweet.errors[:created_at].first)
  end
end
