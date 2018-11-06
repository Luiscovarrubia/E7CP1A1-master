def cls
  system 'clear'
  end

  def inicializacion
      inventario1= {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}


      menu(inventario1)
  end

  def mostrar (stock)

  cls
  inventario=stock
  puts "INVENTARIO ACTUAL "
  inventario.each do |key, value|
  puts "#{key} =  #{value}"

  end
  end
5


  def agregar(stock)
      cls
      new_inventario=stock
      puts ""
      puts "Ingrese el nombre de nuevo producto"
      new_part=gets.chomp.to_sym
      puts "Ingrese la cantidad del nuevo producto"
      new_price=gets.chomp.to_i
      new_item=[new_part, new_price]
      #print new_item
      #new_inventario = Hash[new_item.collect { |item| [new_part, new_price] } ]
      new_inventario[new_part]=new_price
      mostrar(new_inventario)
       puts""
    opcion_si=""
    puts "Presione 1 para agregar nuevo item, cualquier tecla para regresar al menu"
    opcion_si=gets.chomp.to_i
    if opcion_si ==1
    agregar(new_inventario)
    else
    mostrar(new_inventario)
     end
  end

  def borrar (stock)
     inventario=stock
     inventario.each do |key, value|
       puts "#{key} =  #{value}"
       end
  puts "Ingrese el nombre del producto para elliminar del inventario"
   del_item=gets.chomp.to_sym
      if inventario.has_key?(del_item)== true
      puts "El item que busca si existe \n"

      puts "Se eliminarar del inventario \n"

      inventario.delete(del_item)
     #puts "INVENTARIO ACTUAL"
  #inventario.each do |key, value|
  #puts "#{key}=  #{value}  "
  #end
      else
      puts "el item no existe \n "

       end
  end

  def stock_maximo (stock)

    mostrar(stock)
    inventario=stock
    stock_max=inventario.max_by {|key,value|value}
    print "El item con mayor stock es #{stock_max[0].to_s} con #{stock_max[1].to_i} \n"





  end


  def  menu (inventario11)

  #bodega
  menu_opcion =0
  while menu_opcion !=1 do
  puts ""
  puts "Ingrese la opcion deseada"
  puts "1 Para agregar producto presione "
  puts "2 Para eliminar producto presione"
  puts "3 Para mostrar total Stock "
  puts "4 Para mostrar item con mayor stock  "
  puts "5 salir del sistema "



    opcion_menu=gets.chomp.to_i


    if opcion_menu >= 1 && opcion_menu <= 5
      if opcion_menu == 1
        agregar (inventario11)


      elsif opcion_menu == 2

      borrar (inventario11)
      mostrar (inventario11)



      elsif opcion_menu == 3

        mostrar(inventario11)

      elsif opcion_menu == 4

        stock_maximo(inventario11)


      elsif opcion_menu == 5
        menu_opcion=1

        puts '#########################'
        puts '#  CERRANDO  APP        #'
        puts '#########################'
      end
    else

        puts '#########################'
        puts '#ESCRIBIR OPCION VEALIDA#'
        puts '#########################'
   end
  end
  end
  cls
  inicializacion