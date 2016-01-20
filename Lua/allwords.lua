function allwords()
  local line = io.read()
  local pos = 1
  return function()
          while line do
            print("while xunhuan")
            print(line)
            local s,e = string.find(line, "%w+", pos)
            if s then
              pos = e + 1
              print(pos, s, e)
              print("string.sub = ", string.sub(line,s,e))
              return string.sub(line, s, e)
            else
              print("io.read")
              line = io.read()
              pos = 1
            end
          end
          print("return nil")
          return nil
        end
end

for word in allwords() do
  print("for xunhuan")
  print(word)
end
