 
print("loaded chaosMod")

chaos()

function chaos ()
    print("this is chaos")
    print(math.random())
    
    local c_tbl =
    {
    [1] = add,
    [2] = save,
    }

    local func = c_tbl[choice]
    if(func) then
        func()
    else
        print " The program has been terminated."
        print " Thank you!";
    end

end

function setGravity ()
    print("todo")
end

function marksism ()
    print(openWebBrowser("https://marksism.space"))
end
