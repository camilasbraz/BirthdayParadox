
def same():
    value = input("Please enter an integer:\n")
 
    value = int(value)

    aux = 1
    for i in range(1, value):
        probability = i / 366
        aux *= (1 - probability)
    prob = 1 - aux
    print (100*round(prob, 2))


same()

#source: https://www.codespeedy.com/birthday-paradox-program-in-python/
