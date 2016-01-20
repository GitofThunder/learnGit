function newCounter ()
  local i = 0
  --print("i = ",i)
  return function ()
            print("i = ",i)
            i = i + 1
            return i
         end
end

print(newCounter())
c1 = newCounter()   --这里的c1不是newCounter别名，而是newCounter()的return中的function的别名
c1()
c1()
print(c1());
