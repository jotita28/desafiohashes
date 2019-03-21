personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

mix = Hash[personas.zip(edades)] 

def promedio(mix)
    contador = 0
    mix.each do |nombre, valor|
        contador += valor
        
    end
    promedio = contador / mix.length
    puts promedio
end

promedio(mix)



