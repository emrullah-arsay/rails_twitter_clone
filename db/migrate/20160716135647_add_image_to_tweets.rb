class AddImageToTweets < ActiveRecord::Migration
  def self.up
    change_table :tweets do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :tweets, :image
  end
end
