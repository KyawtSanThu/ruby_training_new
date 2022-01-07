class LoginController < ApplicationController
  def index
  end

  def input
    name = "Jue"
    password = "jue123"
    if (name == (params[:username]) && password == (params[:password]))
      :username = "Jue"
      :password = "jue123"
      render "success_login"
    else
      flash.now[:notice] = "Login Failed , Please try again."
    end
  end

  def logout
    render "index"
  end
end
