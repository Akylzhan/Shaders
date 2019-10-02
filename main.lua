function love.load()
    image = love.graphics.newImage('image.jpg')

    success = love.window.setMode(image:getWidth()/2, image:getHeight()/2)
    
    canvas = love.graphics.newCanvas()
    

    local str = love.filesystem.read('crt.frag')--shader code

    shader = love.graphics.newShader(str) 

    --send data to GPU
    shader:send('inputSize', {love.graphics.getWidth(), love.graphics.getHeight()})
    shader:send('textureSize', {love.graphics.getWidth(), love.graphics.getHeight()})

end

function love.draw()
    
    love.graphics.setCanvas(canvas)
    love.graphics.clear()--clear display

    --draw any stuff here
    love.graphics.draw(image, 0, 0, 0, 0.5, 0.5)

    love.graphics.setCanvas()  
    love.graphics.setShader(shader)
    love.graphics.draw(canvas)
    
    love.graphics.setShader()
end