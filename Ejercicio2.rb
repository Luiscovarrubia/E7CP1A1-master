
#Parte 1
productos = Hash.new
productos = {:bebida => 850, :chocolate => 1200, :galletas => 900, :leche => 750}<< producto[2200] = cereal

#hacia el lado
productos.each { |producto,valor| print " ",producto,"  ", valor}

#Parte 2

productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos['queso'] = 1000
print productos

#Parte 3

productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos['bebida'] = 1000
print productos

#Parte 4
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

prod_arr=productos.to_a
print prod_arr

#Parte 5

productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

productos.delete('galletas')
print productos