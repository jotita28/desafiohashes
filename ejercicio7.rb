
def read_products(file_name)
    file = File.open(file_name, 'r')
    products = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
    file.close
    products
    end
    
    arreglo_de_productos = read_products("inventario.csv")
    
    def menu ()
    puts '------------------------------------'
    puts ' Menú: '
    puts '1) Mostrar productos'
    puts '2) Mostrar stock total'
    puts '3) Mostrar producto mayor stock'
    puts '4) Mostrar producto de menor stock'
    puts '5) Productos con stock cero'
    puts '6) Buscar producto'
    puts '7) Salir'
    end
    
    menu
    puts 'Ingrese una opción: '
    opcion = gets.chomp.to_i
    
    while opcion !=7 do
      if opcion == 1
        arreglo_de_productos.each do |producto|
        producto.each do |detalle|
          print "#{detalle} "
        end
        puts " "
        end
      elsif opcion == 2
        arreglo_de_productos.each do |producto|
          nombre = producto[0]
          stock = 0
        producto.each do |detalle|
            stock += detalle.to_i
        end
        print "#{nombre} tiene #{stock} stock\n"
        end
      elsif opcion == 3
        nombre_max = ''
        total_max = 0
        arreglo_de_productos.each do |producto|
          nombre = producto[0]
          stock= 0
          producto.each do |detalle|
            stock += detalle.to_i
          end
         if total_max < stock
           total_max = stock
           nombre_max = nombre
         end
    
          end
          print "#{nombre_max} es #{total_max}\n"
          puts ""
      elsif opcion == 4
        nombre_min = ''
        total_min = arreglo_de_productos.first.map { |num| num.to_i }.sum
        arreglo_de_productos.each do |producto|
          nombre = producto[0]
          stock= 0
          producto.each do |detalle|
            stock += detalle.to_i
          end
         if total_min > stock
           total_min = stock
           nombre_min = nombre
         end
    
          end
          print "#{nombre_min} es #{total_min}\n"
          puts ""
      elsif opcion == 5
        arreglo_de_productos.each do |producto|
          nombre = producto[0]
          print "#{nombre} tiene 0 productos\n" if producto.include? '0'
        end
      elsif opcion == 6
        puts "Ingrese nombre de producto; "
        buscar = gets.chomp.capitalize
        consulta = false
        arreglo_de_productos.each do |producto|
          nombre = producto[0]
          if buscar == nombre
          consulta = true
          else
          consulta = false
        end
      end
        if consulta
          print "Si :)\n"
        else
          print "No :()\n"
        end
      else
        puts 'Ingrese una opcion válida'
      end
      menu
      puts 'Ingrese una opción: '
      opcion = gets.chomp.to_i
    end
    