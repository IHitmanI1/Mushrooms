local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end

local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end

local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end
local component = require("component")
local robot = require("robot")
local computer = require("computer")
local robotEnergy = computer.energy()
local invController = component.inventory_controller

local countBlocks = 0
local distance = 0
local dir = "nil"
local shut = "nil"
local confirm = "nil"
----------------------------------------------------

function parasha(dist, direction)

end  


function robotTryForward()
    while robot.forward() == nil do
        print("Робот столкнулся с препятствием.")
        os.sleep(1)
    end
end


function tryItemPlace()
  local sizeInv = robot.inventorySize()
  if robot.count(1) ~= 0 then
    if robot.placeDown() then
    else
        print("Error: Block dont placed")
    end 
  else
    for i=2,sizeInv do
      if robot.count(1) == 0 then
        robot.select(i)
        if robot.count(i) ~= 0 then
          if robot.transferTo(1) then
            robot.select(1)
            if robot.placeDown() then
            else
              print("Error: Block dont placed")
            end
          else
            print("Error: Transfer items failed")
          end 
        end
        if i == sizeInv then
          if robot.count(i) == 0 then
            print("Error: No items to place")
          end
        end
      end
    end
  end
end

function suckSomeDick(side)
  local sizeInv = robot.inventorySize()
  for i=1,sizeInv do
    robot.select(i)
    if side == "u" then
      robot.suckUp()
    elseif side == "d" then
      robot.suckDown()
    elseif side == "f" then
      robot.suck()
    end
  end
  robot.select(1)
end

function start()
  print("Value: ")
  distance = io.read()
  print("Square: "..distance.."x"..distance.." blocks")
  print("Direction: L/R")
  dir = io.read()
  if dir == "L" or dir == "l" then
    dir = "left"
    print("Direction: Left")
  elseif dir == "R" or dir == "r" then
    dir = "right"
    print("Direction: Right")
  else
    print("Shutdown? Y/N")
    shut = io.read()
    if shut == "Y" or shut == "y" then
      print("Shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    elseif shut == "N" or shut == "n" then
      print("OK, program close")
      return
    else
      print("Input error, shutdown in 3 seconds")
      os.sleep(3)
      computer.shutdown()
    end
  end
  print("Do it? Y/N")
  confirm = io.read()
  if confirm == "Y" or confirm == "y" then
    ----------------------
    --запуск этой параши--
    parasha(distance, dir)
    ----------------------
  elseif confirm == "N" or confirm == "n" then
    print("OK, program close")
    return
  else
    print("Input error, shutdown in 3 seconds")
    os.sleep(3)
    computer.shutdown()
  end
end

