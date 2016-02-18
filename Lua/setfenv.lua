function factory ()
  return function ()
            return a
         end
end


a = 3

f1 = factory()
f2 = factory()

print(f1())
print(f2())

--在lua5.2中已经没有setfenv函数了
--[[
setfenv(f1, {a = 10})

print(f1())
print(f2())
--]]
