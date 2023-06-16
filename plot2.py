import csv
import math
import matplotlib.pyplot as plt
import numpy as np

 
with open('analysis_of_droplets.csv', 'r') as file:
    
    reader = csv.reader(file)
    
     
    # header = next(reader)
    
     
    x_values = []
    y1_values = []
    y2_values=[]
    
    for row in reader:
         
        y1_values.append(float(row[2]))
        x_values.append(float(row[4]))

 
plt.scatter(x_values, y1_values, color='green')
x = np.linspace(0, 15, 100)
pdf = np.exp(-5*x)
plt.plot(x, pdf, 'r', lw=2)
 

 
plt.xlabel('Time')
plt.ylabel('x coordinate')
plt.title('x coordinate v/s Time')

 
plt.show()
