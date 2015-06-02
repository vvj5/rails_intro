class UsersController < ApplicationController
    def index
      @user = User.all
      @user.each do |user|
        puts "#{user[:first_name]} #{user[:last_name]} Age #{user[:age]}"
      end




    end
end



# Given the url http://localhost:3000/users
# I should see ALL the users from the database on the page as plain text.
