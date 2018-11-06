h = Hash.new
h = { :claveuno => 10, :clavedos => 20, :clavetres => 30 }

h.each { |clave,valor| print " ",clave,"  ", valor}
