restaurant_menu = {
  "Ramen" => 300,
  "Dal Makhani" => 400,
  "Coffee" => 200,
  "Sushi" => 1000,
  "Gohan" => 500,
  "Ebi Mozzarella" => 700
}

valores = restaurant_menu.values

# 1
puts "1) El plato más caro es #{restaurant_menu.key(valores.max)}"

# 2
puts "2) El plato más barato es #{restaurant_menu.key(valores.min)}"

# 3
puts "3) El promedio de valor de los platos es #{(valores.sum / valores.count.to_f).round(2)}"

# 4
print "4) #{restaurant_menu.keys}\n"

# 5
print "5) #{restaurant_menu.values}\n"

# 6
platos_con_iva = restaurant_menu.transform_values do |value|
  value * 1.19
end
print "6) #{platos_con_iva}\n"

# 7
platos_con_iva.each do |key, value|
  platos_con_iva[key] = (value * 0.8).round(2) if key.include? ' '
end
print "7) #{platos_con_iva}"
