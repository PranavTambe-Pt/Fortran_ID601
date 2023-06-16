import csv
import math
import matplotlib.pyplot as plt
import numpy as np

 
with open('data.csv', 'r') as file:
    
    reader = csv.reader(file)
    
     
    # header = next(reader)
    
     
    x_values = []
    y1_values = []
   # y2_values=[]
    
    for row in reader:
         
        y1_values.append(float(row[0]))
        x_values.append(float(row[1]))

    """ for i in x_values:
        y2_values.append(math.exp(-5.0*i)) """
plt.plot(x_values, y1_values, color='green')
x = np.linspace(0, 15, 100)
pdf = np.exp(-5*x)
plt.plot(x, pdf, 'r', lw=2)
 

 
plt.xlabel('z')
plt.ylabel('Time')
plt.title('z v/s Time')

 
plt.show()
