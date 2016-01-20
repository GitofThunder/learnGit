function newCounter ()
  local i = 0
  --print("i = ",i)
  function add()
    print("i = ",i)
    i = i + 1
    return i
  end
  i = 3
  return add;
end

print(newCounter())
c1 = newCounter() 
c1()
c1()
print(c1());
