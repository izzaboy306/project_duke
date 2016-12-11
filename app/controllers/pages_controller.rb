class PagesController < ApplicationController
	before_action :authenticate_user!
	
	def home
	end

	def main
	end

	def login
	end
end