fruit = "orange"
case fruit
  when "orange"
    color = "orange"
  when "apple"
    color = "green"
  when "banana"
    color = "yellow"
  else
    color = "unknown"
end

fruit = "orange"
color = case fruit
  when "orange"
    "orange"
  when "apple"
    "green"
  when "banana"
    "yellow"
  else
    "unknown"
end

