class TestPageController < ApplicationController
	def index

	end

	def create_test_user
		User.create(email: "test@test.com", password: "password", password_confirmation: "password")
	end
end
