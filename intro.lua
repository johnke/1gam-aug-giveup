function intro_load()
  gamestate = "intro"
  -- gamestate = "game"  -- Toggle this if you want to just skip to the actual game.
  introduration = 3.5
  blackafterintro = 0.3
  logoduration = 3.5
  quoteduration = 3.5
  introfadetime = 1.0
  introprogress = -0.2
  scale = 1
  screenwidth = 1175
  screenheight = 500
  allowskip = false
end

function intro_update(dt)
  allowskip = true
  if introprogress < introduration+blackafterintro then
    introprogress = introprogress + dt
    if introprogress > introduration+blackafterintro then
      introprogress = introduration+blackafterintro
    end

    if introprogress == introduration + blackafterintro then
      game_draw()
      gamestate = "game"
    end
  end
end

function intro_draw()
  local scale = scale
  if scale <= 1 then
    scale = 0.5
  else
    scale = 1
  end
  if introprogress >= 0 and introprogress < introduration then
    local a = 255
    if introprogress < introfadetime then
      a = introprogress/introfadetime * 255
    elseif introprogress >= introduration-introfadetime then
      a = (1-(introprogress-(introduration-introfadetime))/introfadetime) * 255
    end
    logowidth = logo:getWidth()

    love.graphics.setColor(255, 255, 255, a)
    love.graphics.draw(logo, screenwidth/2 - logo:getWidth()/2, screenheight/2 - logo:getHeight()/2 )
  end
end
