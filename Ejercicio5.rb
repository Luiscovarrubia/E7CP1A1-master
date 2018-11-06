meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
inx=-1
ha={}
meses.each do  |i|
  index=(inx+=1)
  ha[i]=ventas[index]
  end
  print ha
   puts ""
   puts ""
 hax=ha.invert
print hax
 puts "  "
 puts "  "
 sum=0
 hax.each do |key, value|
 sum=sum+key

 end
 puts "El promedio de las edades es #{sum/ha.size}"