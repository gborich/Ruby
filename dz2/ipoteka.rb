puts 'Как вас зовут?'
name = gets.chomp
puts name + ', вы хотите узнать сумму ежемесячного платежа или срок, за который сможете выплатить всю сумму? '
answer = gets.chomp
if answer == 'срок'
    print name + ', введите всю сумму: '
    sum = gets.to_f
    print 'введите сумму ежемесячного платежа: '
    month_sum = gets.to_f
    percent = 0.01
    if(sum*percent>month_sum)
        abort 'не нужна вам ипотека'
    end
    n = 0
    #puts "%-20s|%-20s|%-20s|%-20s|%-20s|" %["срок" , "начальная сумма" ,"месячный процент" ,"сумма уменьшения" ,"остаток" ,]
    while(sum>0)
        sum = sum + sum*percent - month_sum
        n+=1
    end
    years = n/12
    month = n%12
    puts 'через ' + years.to_s + ' лет и ' + month.to_s + ' месяцев вы будете свободны'
else
        print name + ', введите всю сумму: '
    sum = gets.to_f
    percent = 0.01
    puts 'сейчас посчитаем'
    print 'введите количество недель:'
    weeks = gets.to_f
    month_pay = percent*(1 + percent)**weeks*sum/((1+percent)**weeks-1)
    print 'сумма ежемесячного платежа составит: ' 
    puts month_pay
end