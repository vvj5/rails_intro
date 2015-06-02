class UsersController < ApplicationController

    def puts_all_users
      user = User.all
      all_users = user.map do |user|
        "#{user[:first_name]} #{user[:last_name]} Age #{user[:age]}"
      end
      render text: all_users.join("</br></br>"), status: 200
    end

    def puts_one_user
      if User.exists?(params[:id])
      user = User.find(params[:id])
      render text: "#{user.first_name}", status: 200
      else render text: "404 User Not Found", status: 404
      end
    end

end
