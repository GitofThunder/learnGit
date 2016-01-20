names = {"Peter", "Mary", "Paul"}
grades = {Peter = 10, Mary = 9, Paul = 8}
function sortName()
  local _grades = _grades or grades;
  local _names = _names or names;
  print(unpack(_names))
  table.sort(_names, function (n1, n2)
                     return grades[n1] < grades[n2]
                    end)
end


print(unpack(names))
