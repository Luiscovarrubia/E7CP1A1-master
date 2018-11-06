#parte 1
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

 mas_caro=restaurant_menu.max_by{|key, value| value}
  print "Lo mas caro del menu es: #{mas_caro}"

  puts ""

  #parte 2
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

 mas_barato=restaurant_menu.min_by{|key, value| value}
   print "Lo mas caro del menu es: #{mas_barato} "


  puts ""
  #Parte 3
  prom=0
sum=0
restaurant_menu.each do|key, value| (sum=(sum+=value))

end
prom=sum/restaurant_menu.size
print "el promedio de los precio es: #{prom}"

 #Parte 4
 puts ""

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

platos=[]
precios=[]
restaurant_menu.each do|key, value|
platos << key
precios << value
end
print "El menu contiene:  #{platos}"
puts ""
print "Los precios de menu son: #{precios}"
 puts ""

  #Parte 5
  restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

value_iva={}
value_iva=restaurant_menu.map {|key, value|[key, value*1.19]}.to_h


puts ""
print " El menu con precios mas iva es: #{value_iva}"
puts ""
#parte 6
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }


restaurant_menu.map do |key, value|
 if key.include? " " #busca espacio en la key
 value=value*0.8
puts key
puts value
restaurant_menu [key] = value


 end

 end
 print "se aplica descuento a platos con nombre de dos palabras #{restaurant_menu}"