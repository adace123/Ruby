def checkField(field,fieldname)
  field = field.strip
  if(field.empty?)
    puts "The #{fieldname} can't be empty."
  end
  if(field.length<8)
    puts "The #{fieldname} requires at least 8 letters."
  end
  i=0
  numCheck= false
  alphanumCheck = false
  lowerCheck = false
  upperCheck = false
  while(i<field.length) do
    if(field[i].to_i>0)
      numCheck = true
    end
    if(!/[0-9]/.match(field[i]) and !/['A-Z']/.match(field[i]) and !/['a-z']/.match(field[i]))
      puts "The #{fieldname} must contain alphanumeric characters"
    else
      alphanumCheck = true
    end
    if(/['A-Z']/.match(field[i]))
      upperCheck = true
    end
    if(/['a-z']/.match(field[i]))
      lowerCheck = true
    end
    i+=1
  end
  if(!lowerCheck)
    puts "The #{fieldname} requires a lowercase character."
  end
  if(!upperCheck)
    puts "The #{fieldname} requires an uppercase character."
  end
  if(!numCheck)
    puts "The #{fieldname} requires numeric character."
  end
  numCheck==true and alphanumCheck==true and lowerCheck==true and upperCheck==true and !field.empty? and field.length>=8
end
