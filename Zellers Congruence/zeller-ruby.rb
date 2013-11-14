#Zeller Method project
#We'll be using Zeller's congruence, which is an algorithm devised by Christian Zeller to 
#calculate the day of the week for any Julian or Gregorian calendar date:
#h = ( ( q +( (m+1) * 26 // 10)+ Y +( Y // 4)+ 6 * (Y // 100)+ (Y // 400)) % 7 )
#... all of which translates to this:
#dayOfWeek = (dayOfMonth + ((month + 1) * 26 // 10) + year + (year // 4) +
#   6 * (year/ / 100) + (year // 400)) % 7)
# Note that in this algorithm, January and February are counted as
#months #13 & #14 of the previous year, which will need to factor into your method.

def zeller(day,month,year)
        months = %w[march april may june july august september october november december january february]
    weekdays = %w[Sunday Monday Tuesday Wednesday Thursday Friday Saturday]
    k = day
    m = months.index(month.downcase) + 1
    y = (m <= 10) ? year : year-1
    d = y % 100
    c = y / 100
    f = (k + (((13*m) - 1) / 5).floor + d + (d/4).floor + (c/4).floor - (2*c)) % 7
    weekdays[f]
end