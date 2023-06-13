function love.load()

    code = {}
    code.bulletTypeFinished = false

    Bullet = {}
    Bullet.velocity = 0.0
    Bullet.angle = 0.0
    Bullet.type = ""
    Bullet.possibleType = {"HEAT", "HESH", "APDSFS"}

    Shield = {}
    Shield.material = ""
    Shield.oppacity = 0

    print("Bullet.velocity = ")
    Bullet.velocity = io.read("*n")
    print("Bullet.angle = ")
    Bullet.angle = io.read("*n")
    while Bullet.type ~= "HEAT" or Bullet.type ~= "HESH" or Bullet.type ~= "APDSFS" do
        print("Bullet.type = ")
        Bullet.type = io.read("*a")
    end
    print("Shield.material = ")
    Shield.material = io.read("*a")
    print("Shield.oppacity (in mm) = ")
    Shield.oppacity = io.read("*n")

    love.window.setTitle("TigerM1")

end

function love.update()
    
end

function love.draw()

    love.graphics.rectangle("fill", 0, love.graphics.getHeight()-(Shield.oppacity+100), love.graphics.getWidth(), Shield.oppacity)
    love.graphics.rotate(Bullet.angle)
    --love.graphics.line(nil ,nil ,nil ,nil)

end