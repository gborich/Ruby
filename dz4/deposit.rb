print 'введите сумму: '
sum = gets.to_i
print 'введите месяц: '
month = gets.to_i
if month > 12
    abort 'Введен некорректный месяц'
end
print 'введите год: '
year = gets.to_i
time = (year - 2018) * 12 + month - 11
if time <= 0
    abort 'Введена некорректная дата.'
end
def func(sum)
    percent = 0.07
    return  sum + sum * percent / 12
end
result = 0
while time > 0
    result = func(sum + result)
    time -= 1
end
puts 'У вас на счету будет: ' + result.to_s