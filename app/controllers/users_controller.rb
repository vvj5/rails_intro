class UsersController < ApplicationController
    def index
      @user = User.all
      all_users = @user.map do |user|
        "#{user[:first_name]} #{user[:last_name]} Age #{user[:age]}"
      end
      render text: all_users.join("</br></br>"), status: 200
    end
end



# Given the url http://localhost:3000/users
# I should see ALL the users from the database on the page as plain text.
