class PagesController < ApplicationController
	def home

	end
	def profile
     		 @tweets  = Tweet.all
	end
end
