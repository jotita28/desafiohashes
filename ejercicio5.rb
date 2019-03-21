meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

puts mix = Hash[meses.zip(ventas)] 
rev = mix.reverse_each.to_h

def largest_hash_key(hash)
    puts hash.max_by{|k,v| v}
  end
  largest_hash_key(rev)