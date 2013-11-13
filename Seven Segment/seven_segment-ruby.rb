#This function changes the class value of table cells in accordance with the pattern of a 7 segment display
def illuminate(num)
     num=Integer(num)
     pattern = ["yyyyyyn", "nyynnnn", "yynyyny", "yyyynny", "nyynnyy", "ynyynyy", "ynyyyyy", "yyynnnn", "yyyyyyy", "yyyynyy"]
     return pattern[num]
end

#This function extracts digits from an input text and illuminates based on the digits based

def get_digits(text)
text = text.reverse()
    num = Integer(text)
    res = []
    i = 0
    while i < text.length do
        rem = num % 10
        num = num / 10
        rem = String(rem)
        if rem >= '0' && rem <= '9'
            res.push(illuminate(rem))
        end
        i += 1
    end
    return res
    end