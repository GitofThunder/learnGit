function maximum(a)
  index = 1;
  maxVal = a[index]
  for i, val in ipairs(a) do
    if val > maxVal then
      maxVal = val
      index = i
    end
  end
  return index, maxVal
end
