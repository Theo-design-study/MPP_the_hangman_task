slova = ["свинка", "олень", "манул", "лиса", "тыква", "фасоль"]
vubrat_slovo = slova[rand(slova.length)]    
ygadannue = Array.new(vubrat_slovo.length, "_")
poputok = 7
nugno_ygadat = vubrat_slovo.length

while poputok > 0 && nugno_ygadat > 0 do
    puts "Слово: #{ygadannue}\nОсталось попыток: #{poputok}"
    print "Буква: "
    bukva_igroka = gets.chomp.downcase

    if !bukva_igroka =~ /[а-я]/
        puts "ОШИБКА: введен неверный символ"
        next
    elsif bukva_igroka.length > 1 
        puts "ОШИБКА: нужно ввести одну букву"
        next
    elsif ygadannue.include?(bukva_igroka)
        puts "ОШИБКА: вы уже угадали эту букву"
        next
    end

    takix_bykv = vubrat_slovo.count(bukva_igroka)
    if takix_bykv == 0
        puts "НЕВЕРНО!"
        poputok -= 1
    else
        puts "ВЕРНО!"
        nugno_ygadat -= takix_bykv
    end

    i = 0
    col_zamen = 0
    while col_zamen < takix_bykv do
        if vubrat_slovo[i] == bukva_igroka
            ygadannue[i] = bukva_igroka
            col_zamen += 1
        end
        i += 1
    end

    puts "---------------"
end

puts "СЛОВО: #{vubrat_slovo}"
if  nugno_ygadat == 0 
    puts "ВЫ ПОБЕДИЛИ"
else
    puts "ВЫ ПРОИГРАЛИ" 
end

