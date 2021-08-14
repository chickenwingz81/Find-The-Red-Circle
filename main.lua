-- [Find The Red Circle]

--[1. Drawing Shapes & Score]

-- [Drawing The Red Circle]
function love.draw()
	love.graphics.setColor(30,0,0)
	love.graphics.circle("fill", button.x , button.y, button.size)

	

	--[Drawing The Teal Rectangle]
    
 
    love.graphics.setColor(0,5,3)
	love.graphics.rectangle("fill", 300, 120, 200,100 )
      
   -- [Drawing Green Circle]
      love.graphics.setColor(0,7,0)
      love.graphics.circle("fill", 560, 100, 50, 100)
	
	-- [Drawing Purple Rectangle]
       
       
      
       love.graphics.setColor(2,0,4)
       love.graphics.rectangle("fill", 200,420, 200,100) 

       --[Drawing Yellow Circle]

       love.graphics.setColor(7,10,0)
       love.graphics.circle("fill", 200, 100,50, 100)

       --[Drawing Green Rectangle]

       love.graphics.setColor(0,10,0)
       love.graphics.rectangle("fill", 300, 350, 200, 100)

       --[Drawing Blue Circle]

       love.graphics.setColor(0,0,1)
       love.graphics.circle("fill", 560, 300, 50, 100)

       --[Drawing Blue Rectangle]

       love.graphics.setColor(0,0,4)
       love.graphics.rectangle("fill", 590, 500,200, 100)

       --[Drawing Purple Circle]
       love.graphics.setColor(5,0,6)
       love.graphics.circle("fill", 100, 300 , 100, 100)

    
    --[Drawing The Score]
   
  
	
	love.graphics.setColor(255,255,255)
	love.graphics.print(score)
end

function love.update(dt)

end

--[2. Structuring Table of Button, button.x, etc]

function love.load()
    score=0
	button={}
	button.x= 245
	button.y = 300
	button.size= 50

	-- [Creating My Own Font]

	myFont= love.graphics.newFont(35)

	love.graphics.setFont(myFont)
end 

-- [3. Controls For Game]



function love.mousepressed(x, y, b, istouch)
   if b == 1 then
	score = score+1
   button.x= math.random(0, love.graphics.getWidth())
   button.y = math.random(0, love.graphics.getHeight())
   end
end

--[Prominent Formula]

function distanceBetween(x1, y1, x2, y2)
   return math.sqrt((y2 - y1)^2 + (x2 - x1)^2)
end

