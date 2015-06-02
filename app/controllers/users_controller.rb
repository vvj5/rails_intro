class UsersController < ApplicationController

    def puts_all_users
      user = User.all
      all_users = user.map do |user|
        "#{user[:first_name]} #{user[:last_name]} Age #{user[:age]}"
      end
      render text: all_users.join("</br></br>"), status: 200
    end

    def puts_one_user
      user = User.find(params[:id])
    render text: "#{user.first_name}", status: 200
    end



end



# Given the url http://localhost:3000/users/1 I should see ONLY the user
# from the database with that id as plain text on the page.

# Given the url http://localhost:3000/users
# I should see ALL the users from the database on the page as plain text.
