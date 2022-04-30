def probOfSameBirthday():
    value = input("Please enter an integer:\n")
 
    value = int(value)

    q = 1
    for i in range(1, value):
        probability = i / 366
        q *= (1 - probability)
    p = 1 - q
    print (100*round(p, 2))
    
