Rails.application.routes.draw do
  get '/game' => 'game#try' #We named the controller game_controller. This matches the game#try we used
  get '/new_game' => 'game#reset'
end


# Create a route /game to call a method called try in GameController.
# Test http://localhost:3000/game?guess=21 in a browser - what error do you get?
# Create a controller GameController with a method called try.
# Test http://localhost:3000/game?guess=21 in a browser - what error do you get?
# Create a view for the try method in GameController called try.html.erb.
# Test http://localhost:3000/game?guess=21 in a browser and see that try.html.erb is rendered.


# Then, in method try:
# On first call, store a secret number in a cookie
# On each call, check the secret number against the guess (the parameter).
# Then, set an instance variable to the result (call it @result) of the guess (high/low/win).
# Then, render try.html.erb.
# If you do not win, repeat 2-3. If you win, repeat 1-2-3.
# Then, in try.html.erb:
# Display the result of the guess


# Stretch Challenge Two
#
# Create a route (/new_game) and controller method (reset) to reset the game.
#
# Stretch Challege Three
#
# Accept and store user name, and use it in the views.
#
# Stretch Challenge Four
#
# Encrypt the secret number.
