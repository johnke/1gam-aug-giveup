function game_load()
  screenwidth = love.graphics.getWidth()
  screenheight = love.graphics.getHeight()


  torso = {}
  torso.rot = 0.6
  torso.x_start = 270
  torso.y_start = 300

  r_arm_upper = {}
  r_arm_upper.rot = 0.4
  r_arm_upper.x_start = 295
  r_arm_upper.y_start = 220

  r_arm_lower = {}
  r_arm_lower.rot = 0
  r_arm_lower.x_start = 376
  r_arm_lower.y_start = 200

  l_arm_upper = {}
  l_arm_upper.rot = 0.4
  l_arm_upper.x_start = 295
  l_arm_upper.y_start = 220

  l_arm_lower = {}
  l_arm_lower.rot = 0
  l_arm_lower.x_start = 376
  l_arm_lower.y_start = 200
  
  head = {}
  head.rot = 0.3  
  head.x_start = 265
  head.y_start = 115

  r_leg_upper = {}
  r_leg_upper.rot = 1.3
  r_leg_upper.x_start = 306
  r_leg_upper.y_start = 285
  r_leg_upper.direction = "up"

  r_leg_lower = {}
  r_leg_lower.rot = 1.5
  r_leg_lower.x_start = 315
  r_leg_lower.y_start = 285
  r_leg_upper.length = 85
  
  l_leg_upper = {}
  l_leg_upper.rot = 0
  l_leg_upper.x_start = 306
  l_leg_upper.y_start = 285
  l_leg_upper.direction = "down"

  l_leg_lower = {}
  l_leg_lower.rot = 1.5
  l_leg_lower.x_start = 315
  l_leg_lower.y_start = 285
  l_leg_upper.length = 85

  r_foot = {}
  r_foot.rot = -0.25
  r_foot.x = 303
  r_foot.y = 460

  l_foot = {}
  l_foot.rot = -0.25
  l_foot.x = 303
  l_foot.y = 460
  
  r_hand = {}
  r_hand.rot = 0

  l_hand = {}
  l_hand.rot = 0

  walking_speed = 0.8

end


function game_draw()

  r_hand.origin_x = r_hand_graphic:getWidth()
  r_hand.origin_y = r_hand_graphic:getHeight()/2

  l_hand.origin_x = l_hand_graphic:getWidth()
  l_hand.origin_y = l_hand_graphic:getHeight()/2


  r_arm_upper.x = r_arm_upper.x_start  + arm_upper_graphic:getWidth() * math.sin(torso.rot) 
  r_arm_upper.y = r_arm_upper.y_start + (arm_upper_graphic:getHeight() * math.cos(torso.rot)) * 0.1

  r_arm_lower.x = r_arm_upper.x + (math.cos(r_arm_upper.rot) * arm_upper_graphic:getWidth()) - 20
  r_arm_lower.y = r_arm_upper.y + (math.sin(r_arm_upper.rot) * arm_upper_graphic:getHeight() * 2) 

  r_arm_upper.origin_x = 10
  r_arm_upper.origin_y = arm_upper_graphic:getHeight() /2
  
  r_arm_lower.origin_x = 5
  r_arm_lower.origin_y = 15
  
  r_hand.x = r_arm_lower.x + (math.cos(r_arm_lower.rot) * arm_lower_graphic:getHeight()) + (arm_lower_graphic:getWidth()/1.5)
  r_hand.y = r_arm_lower.y + (math.sin(r_arm_lower.rot) * arm_lower_graphic:getWidth()) - 5

  r_leg_upper.origin_x = 5
  r_leg_upper.origin_y = 15

  r_leg_lower.origin_x = 0
  r_leg_lower.origin_y = 0

  r_foot.origin_x = 5
  r_foot.origin_y = 15

  torso.x = torso.x_start
  torso.y = torso.y_start

  r_leg_upper.x = torso.x + 12
  r_leg_upper.y = torso.y - 10


  head.x = head.x_start + (math.sin(torso.rot) * torso_graphic:getWidth() * 2)
  head.y = head.y_start + (math.sin(torso.rot) * torso_graphic:getWidth())

  r_leg_lower.x = r_leg_upper.y + (leg_upper_graphic:getWidth() / 1 * math.cos(r_leg_upper.rot + 0.1))
  r_leg_lower.y = r_leg_upper.y + (leg_upper_graphic:getWidth() /1.1 * math.sin(r_leg_upper.rot)) 

  r_foot.x = r_leg_lower.x + (math.cos(r_leg_lower.rot) * leg_lower_graphic:getHeight()) - 30
  r_foot.y = r_leg_lower.y + (math.sin(r_leg_lower.rot) * leg_lower_graphic:getWidth()) - 0
  
  
  l_arm_upper.x = l_arm_upper.x_start  + arm_upper_graphic:getWidth() * math.sin(torso.rot) 
  l_arm_upper.y = l_arm_upper.y_start + (arm_upper_graphic:getHeight() * math.cos(torso.rot)) * 0.1

  l_arm_lower.x = l_arm_upper.x + (math.cos(l_arm_upper.rot) * arm_upper_graphic:getWidth()) - 20
  l_arm_lower.y = l_arm_upper.y + (math.sin(l_arm_upper.rot) * arm_upper_graphic:getHeight() * 2) 

  l_arm_upper.origin_x = 10
  l_arm_upper.origin_y = arm_upper_graphic:getHeight() /2
  
  l_arm_lower.origin_x = 5
  l_arm_lower.origin_y = 15
  
  l_hand.x = l_arm_lower.x + (math.cos(l_arm_lower.rot) * arm_lower_graphic:getHeight()) + (arm_lower_graphic:getWidth()/1.5)
  l_hand.y = l_arm_lower.y + (math.sin(l_arm_lower.rot) * arm_lower_graphic:getWidth()) - 5

  l_leg_upper.origin_x = 5
  l_leg_upper.origin_y = 15

  l_leg_lower.origin_x = 0
  l_leg_lower.origin_y = 0

  l_foot.origin_x = 5
  l_foot.origin_y = 15

  l_leg_upper.x = torso.x + 12
  l_leg_upper.y = torso.y - 10

  l_leg_lower.x = l_leg_upper.y + (leg_upper_graphic:getWidth() / 1 * math.cos(l_leg_upper.rot + 0.1))
  l_leg_lower.y = l_leg_upper.y + (leg_upper_graphic:getWidth() /1.1 * math.sin(l_leg_upper.rot)) 

  l_foot.x = l_leg_lower.x + (math.cos(l_leg_lower.rot) * leg_lower_graphic:getHeight()) - 30
  l_foot.y = l_leg_lower.y + (math.sin(l_leg_lower.rot) * leg_lower_graphic:getWidth()) - 0
  
  torso.origin_x = torso_graphic:getWidth() / 2
  torso.origin_y = torso_graphic:getHeight() - 10

  love.graphics.setBackgroundColor(170, 120, 66, 255)

  love.graphics.setColor(255, 255, 255, 255)
  -- love.graphics.setBackgroundColor(255, 255, 255)
  -- love.graphics.draw(arm_upper_graphic, l_arm_upper.x, l_arm_upper.y, l_arm_upper.rot, 1, 1, l_arm_upper.origin_x, l_arm_upper.origin_y)
  -- love.graphics.draw(arm_lower_graphic, l_arm_lower.x, l_arm_lower.y, l_arm_lower.rot, 1, 1, l_arm_lower.origin_x, l_arm_lower.origin_y)

  love.graphics.draw(arm_upper_graphic, l_arm_upper.x, l_arm_upper.y, l_arm_upper.rot, 1, 1, l_arm_upper.origin_x, l_arm_upper.origin_y)
  love.graphics.draw(arm_lower_graphic, l_arm_lower.x, l_arm_lower.y, l_arm_lower.rot, 1, 1, l_arm_lower.origin_x, l_arm_lower.origin_y)
  love.graphics.draw(l_hand_graphic, l_hand.x, l_hand.y, l_hand.rot, 1, 1, l_hand.origin_x, l_hand.origin_y)  

  love.graphics.draw(leg_upper_graphic, l_leg_upper.x, l_leg_upper.y, l_leg_upper.rot, 1, 1, l_leg_upper.origin_x, l_leg_upper.origin_y)
  love.graphics.draw(leg_lower_graphic, l_leg_lower.x, l_leg_lower.y, l_leg_lower.rot, 1, 1, l_leg_lower.origin_x, l_leg_lower.origin_y)
  love.graphics.draw(foot_graphic, l_foot.x, l_foot.y, l_foot.rot, 1, 1, l_foot.origin_x, l_foot.origin_y)

  love.graphics.draw(torso_graphic, torso.x, torso.y, torso.rot, 1, 1, torso.origin_x, torso.origin_y)
  love.graphics.draw(head_graphic, head.x, head.y, head.rot)

  love.graphics.draw(arm_upper_graphic, r_arm_upper.x, r_arm_upper.y, r_arm_upper.rot, 1, 1, r_arm_upper.origin_x, r_arm_upper.origin_y)
  love.graphics.draw(arm_lower_graphic, r_arm_lower.x, r_arm_lower.y, r_arm_lower.rot, 1, 1, r_arm_lower.origin_x, r_arm_lower.origin_y)
  love.graphics.draw(r_hand_graphic, r_hand.x, r_hand.y, r_hand.rot, 1, 1, r_hand.origin_x, r_hand.origin_y)  

  love.graphics.draw(leg_upper_graphic, r_leg_upper.x, r_leg_upper.y, r_leg_upper.rot, 1, 1, r_leg_upper.origin_x, r_leg_upper.origin_y)
  love.graphics.draw(leg_lower_graphic, r_leg_lower.x, r_leg_lower.y, r_leg_lower.rot, 1, 1, r_leg_lower.origin_x, r_leg_lower.origin_y)
  love.graphics.draw(foot_graphic, r_foot.x, r_foot.y, r_foot.rot, 1, 1, r_foot.origin_x, r_foot.origin_y)
  mouse_x = love.mouse.getX()
  mouse_y = love.mouse.getY()
  love.graphics.print( "Mouse X: ".. mouse_x .. " Mouse Y: " .. mouse_y, 10, 20 )
end


function game_update(dt)
  print("torso ", torso.rot)
  if love.keyboard.isDown("p") and love.keyboard.isDown("q") then
    if r_leg_upper.direction ~= "wait" and l_leg_upper.direction ~= "wait" then
      if torso.rot >= 0.75 then
        torso.rot = torso.rot - (dt * 0.1)
      end
      if torso.rot >= 0.56 then
        print("FUU")
        torso.rot = torso.rot + (dt * 0.1)
      end
      if r_leg_upper.direction == "up" and l_leg_upper.direction == "down" then
        if r_leg_upper.rot >= 0.1 then
          r_leg_upper.rot = r_leg_upper.rot - (dt * walking_speed)
          r_leg_lower.rot = r_leg_lower.rot + (dt * 0.1)
          -- foot.rot = foot.rot - (dt * 0.25)
          torso.rot = torso.rot + (dt * 0.1)
          r_arm_upper.rot = r_arm_upper.rot - (dt * 0.1)
          r_arm_lower.rot = r_arm_lower.rot - (dt * 0.25)
          r_hand.rot = r_hand.rot - (dt * 0.25)
        end
        if l_leg_upper.rot <= 1.6 then
          l_leg_upper.rot = l_leg_upper.rot + (dt * walking_speed)
          l_leg_lower.rot = l_leg_lower.rot - (dt * 0.1)
          -- foot.rot = foot.rot + (dt * 0.25)
          torso.rot = torso.rot - (dt * 0.1)
          l_arm_upper.rot = l_arm_upper.rot + (dt * 0.1)
          l_arm_lower.rot = l_arm_lower.rot + (dt * 0.25)
          l_hand.rot = l_hand.rot + (dt * 0.25)
        else
          l_leg_upper.direction = "wait"
          r_leg_upper.direction = "wait"
          l_leg_upper.next_direction = "up"
          r_leg_upper.next_direction = "down"
        end
      end
      if r_leg_upper.direction == "down" and l_leg_upper.direction == "up" then
        if l_leg_upper.rot >= 0.1 then
          l_leg_upper.rot = l_leg_upper.rot - (dt * walking_speed)
          l_leg_lower.rot = l_leg_lower.rot + (dt * 0.1)
          -- foot.rot = foot.rot - (dt * 0.25)
          torso.rot = torso.rot + (dt * 0.1)
          l_arm_upper.rot = l_arm_upper.rot - (dt * 0.1)
          l_arm_lower.rot = l_arm_lower.rot - (dt * 0.25)
          l_hand.rot = l_hand.rot - (dt * 0.25)
        end
        if r_leg_upper.rot <= 1.6 then
          r_leg_upper.rot = r_leg_upper.rot + (dt * walking_speed)
          r_leg_lower.rot = r_leg_lower.rot - (dt * 0.1)
          -- foot.rot = foot.rot + (dt * 0.25)
          torso.rot = torso.rot - (dt * 0.1)
          r_arm_upper.rot = r_arm_upper.rot + (dt * 0.1)
          r_arm_lower.rot = r_arm_lower.rot + (dt * 0.25)
          r_hand.rot = r_hand.rot + (dt * 0.25)
        else
          l_leg_upper.direction = "wait"
          r_leg_upper.direction = "wait"
          r_leg_upper.next_direction = "up"
          l_leg_upper.next_direction = "down"
        end
      end
    end
  else
    if l_leg_upper.next_direction then
      l_leg_upper.direction = l_leg_upper.next_direction
    end
    if r_leg_upper.next_direction then      
      r_leg_upper.direction = r_leg_upper.next_direction
    end
  end

  -- if love.keyboard.isDown("p") then
  --   if r_leg_upper.direction == "up" then
  --     if r_leg_upper.rot >= -0.1 then
  --       r_leg_upper.rot = r_leg_upper.rot - (dt * walking_speed)
  --       r_leg_lower.rot = r_leg_lower.rot + (dt * 0.1)
  --       -- foot.rot = foot.rot - (dt * 0.25)
  --       torso.rot = torso.rot + (dt * 0.1)
  --       r_arm_upper.rot = r_arm_upper.rot - (dt * 0.1)
  --       r_arm_lower.rot = r_arm_lower.rot - (dt * 0.25)
  --       r_hand.rot = r_hand.rot - (dt * 0.25)
  --     else
  --       r_leg_upper.direction = "wait"
  --       l_leg_upper.direction = "down"
  --     end
  --   end
  --   if r_leg_upper.direction == "down" then
  --     if r_leg_upper.rot <= 1.8 then
  --       r_leg_upper.rot = r_leg_upper.rot + (dt * walking_speed)
  --       r_leg_lower.rot = r_leg_lower.rot - (dt * 0.1)
  --       -- foot.rot = foot.rot + (dt * 0.25)
  --       torso.rot = torso.rot - (dt * 0.1)
  --       r_arm_upper.rot = r_arm_upper.rot + (dt * 0.1)
  --       r_arm_lower.rot = r_arm_lower.rot + (dt * 0.25)
  --       r_hand.rot = r_hand.rot + (dt * 0.25)
  --     else
  --       r_leg_upper.direction = "wait"
  --       l_leg_upper.direction = "up"
  --     end
  --   end
  --   -- r_leg_upper.rot = r_leg_upper.rot - (dt * 5)
  -- elseif love.keyboard.isDown("q") then
  --   if l_leg_upper.direction == "up" then
  --     if l_leg_upper.rot >= -0.1 then
  --       l_leg_upper.rot = l_leg_upper.rot - (dt * walking_speed)
  --       l_leg_lower.rot = l_leg_lower.rot + (dt * 0.1)
  --       -- foot.rot = foot.rot - (dt * 0.25)
  --       torso.rot = torso.rot + (dt * 0.1)
  --       l_arm_upper.rot = l_arm_upper.rot - (dt * 0.1)
  --       l_arm_lower.rot = l_arm_lower.rot - (dt * 0.25)
  --       l_hand.rot = l_hand.rot - (dt * 0.25)
  --     else
  --       l_leg_upper.direction = "wait"
  --       r_leg_upper.direction = "up"
  --     end
  --   end
  --   if l_leg_upper.direction == "down" then
  --     if l_leg_upper.rot <= 1.8 then
  --       l_leg_upper.rot = l_leg_upper.rot + (dt * walking_speed)
  --       l_leg_lower.rot = l_leg_lower.rot - (dt * 0.1)
  --       -- foot.rot = foot.rot + (dt * 0.25)
  --       torso.rot = torso.rot - (dt * 0.1)
  --       l_arm_upper.rot = l_arm_upper.rot + (dt * 0.1)
  --       l_arm_lower.rot = l_arm_lower.rot + (dt * 0.25)
  --       l_hand.rot = l_hand.rot + (dt * 0.25)
  --     else
  --       l_leg_upper.direction = "wait"
  --       r_leg_upper.direction = "down"
  --     end
  --   end
  -- end
end
