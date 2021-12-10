module Calculator
    
    def add(num1, num2)
        return num1+num2
    end
    
    def subtract(num1, num2)
        return num1-num2
    end

    def multiply(num1, num2)
        return num1*num2
    end

    def divide(num1, num2)
        return num1/num2
    end
end

def sum_and_difference(num1,num2)
    include Calculator
    return {sum: add(num1, num2), difference: subtract(num1, num2)}
end

def multiply_all(values)
    include Calculator
    
    total = values[0]
    values.each do |x|
        total = multiply(total, x)
    end
    return total
end

sum_and_difference(5,4)
multiply_all([1,2,3,4])