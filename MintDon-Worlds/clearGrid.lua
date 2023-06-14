--Searches the inventory for all fuel sources.
function Fuel()
    for i=1,16 do
        print("Attempted to refuel at index: ")
        print(i)
        turtle.select(i)
        turtle.refuel()
    end
end

--PlaceHolder function because I am lazy.
--Place at eye-level.
function MakeStair()
    turtle.select(16)
    for i=0, 40 do
        turtle.dig()
        turtle.forward()
        turtle.digDown()
        turtle.digUp()
        turtle.down()
        turtle.digDown()
    end
    turtle.turnLeft()
    turtle.turnLeft()
    for i=0, 40 do
        turtle.placeDown()
        turtle.up()
        turtle.forward()
    end
end

function GoBackDown()

--Mines at eye level and creates a straight line for 128 blocks (8 chuncks.)
function LineDig128()
    for i=0,128 do
        turtle.dig()
        turtle.foward()
        turtle.digDown()
    end
end

-- Handling my insanity.
function StartUpOptions()
    write("Please select option:\n1) Refuel\n2) Make Stairs\n3) Dig in a straight line.\n")
    pInput = read()
    print("Player selected option ")
    write(pInput)
    print("\n---------------------------------------")
    if pInput == '1' then
        Fuel()
    end
    if pInput == '2' then
        MakeStair()
    end
    if pInput == '3' then
        LineDig128()
    end
end

StartUpOptions()
