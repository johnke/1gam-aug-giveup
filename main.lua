function love.load()
  require "intro"
  require "game"
  logo = love.graphics.newImage("graphics/sisyphus-logo.png")
  intro_load()
  game_load()
  head_graphic = love.graphics.newImage("graphics/head.png")
  torso_graphic = love.graphics.newImage("graphics/torso.png")
  l_hand_graphic = love.graphics.newImage("graphics/hand.png")
  r_hand_graphic = love.graphics.newImage("graphics/hand.png")
  foot_graphic = love.graphics.newImage("graphics/foot.png")
  hip_graphic = love.graphics.newImage("graphics/hip.png")
  arm_upper_graphic = love.graphics.newImage("graphics/arm-upper.png")
  arm_lower_graphic = love.graphics.newImage("graphics/arm-lower.png")
  leg_upper_graphic = love.graphics.newImage("graphics/leg-upper.png")
  leg_lower_graphic = love.graphics.newImage("graphics/leg-lower.png")
  objects = {}
  -- soundtrack = love.audio.newSource("sounds/soundtrack.mp3") 
end


function love.update(dt)
  if gamestate == "intro" then
    intro_update(dt)
  elseif gamestate == "game" then
    game_update(dt)
  end
end


function love.draw()
  -- love.audio.play(soundtrack)
  if gamestate == "intro" then
    intro_draw()
  elseif gamestate == "game" then
    game_draw()
  end
end


function love.keypressed(key, unicode)

end


function love.keyreleased(key, unicode)

end


function love.mousepressed(x, y, button)

end


function love.mousereleased(x, y, button)

end
