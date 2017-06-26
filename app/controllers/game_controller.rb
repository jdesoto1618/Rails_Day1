
class GameController < ApplicationController
  def try
    @name = params[:name]
    cookies[:name] = @name #To get this bad boy stored, set up the params first, store it
    #render html: "hello" #Without this line, the page will display a cant find template error
    #render html: params[:guess] #Takes url input for variable guess and displays it on the page
    if !cookies[:counter].present?
      cookies[:counter] = 0
    else
      counter = cookies[:counter].to_i
      counter += 1
      cookies[:counter] = counter
    end

    @num = 15
    session[:xyz] = @num
    if @num == params[:guess].to_i #When you put a parameter in the url, it returns it as a string. This is why we did .to_i
      @result = "You win!"
    elsif @num > params[:guess].to_i
      @result = "Too low!"
    else
      @result = "Too high!!"
    end
    render "try.html.erb" #To make this work, have to create a new folder that contains this file. The folder has to be in the views folder, and it must be called in this case game since the controller file name is game_controller.
    # fail
  end

  def reset
    cookies[:counter] = 0
    redirect_to action: :try
  end
end #Ends the class

#Can only call render or redirect once per method, unless you have it wrapped in an if statement
