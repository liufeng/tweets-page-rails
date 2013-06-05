class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets, :id => false do |t|
      t.integer :id, :limit => 8
      t.text :text

      t.timestamps
    end
  end
end
