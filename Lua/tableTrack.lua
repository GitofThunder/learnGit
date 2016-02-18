local index = {}

local mt = {
    __index = 
      function (t, k)
        print("*access to element " .. tostring(k))
        return t[index][k]
      end,
    
    __newindex = 
      function (t, k, v)
        print("*update of element " .. tostring(k) .. " to " .. tostring(v))
        t[index][k] = v
      end
}

function track(t)
  local proxy = {}
  proxy[index] = t
  setmetatable(proxy, mt)
  return proxy
end

t = {zhaojian = 1}
t = track(t)
print(t["zhaojian"])
print(t["feiji"])
