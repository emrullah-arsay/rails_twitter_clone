class Tweet < ActiveRecord::Base

belongs_to :user
has_many :comments

acts_as_votable

has_attached_file :image, :styles => { :medium => "400x400>", :thumb => "100x100#" }, :default_url => "/images/:style/_.png"
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
