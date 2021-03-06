function readOnly(t)
  local proxy = {}
  local mt = {
    __index = t,
    __newindex = function (t, k, v)
      error("attempt to update a read-only table", 2)
    end
  }
  setmetatable(proxy, mt)
  return proxy
end

days = readOnly{ "sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"}

print(days[1])
days[2] = "noday"
