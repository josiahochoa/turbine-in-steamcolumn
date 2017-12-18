# turbine-in-steamcolumn
The purpose of a steam column is to dissipate heat from a heat source to a heat sink (the environment). Many of the approaches for optimizing steam column performance and efficiency are based on numerical models. The column size depends on temperatures in, out, and ambient. 

![image](https://user-images.githubusercontent.com/33164967/34090186-0205acec-e36a-11e7-884f-54239f496744.png)

The outlet temperture is modeled as a function of ambient temperature and temperature range. 
![image](https://user-images.githubusercontent.com/33164967/34090376-67a1537a-e36b-11e7-9835-f2f8f8caaa60.png)

The goal is to find these coefficients using data obtained to create an accurate mathematical model for the steam column. It would be quite tedious to try to find these coefficients by hand, thankfully we can use scripts to do so for us. 

## Implementation

To implement this script file it is necessary to input vectors tr and tamb filled with experimental data. The script will plug in each according value of tr and tamb to create a matrix of values. This matrix of values can then be solved by the matlab built-in command '\'. 

![image](https://user-images.githubusercontent.com/33164967/34089092-9cc681aa-e362-11e7-9130-447e915ca459.png)

It is important to note that this function was designed to work specifically for the equation given and is not recommended to use in other scenarios. 

## Required Software

* [MatLab](https://www.mathworks.com/products/matlab.html)

## Authors

 **Josias Ochoa**  - [josiahochoa](https://github.com/josiahochoa)

## Acknowledgments

 **Tin Ngo** - *tngo019@ucr.edu*
