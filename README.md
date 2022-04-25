# Nyquist Frequency and Frequency Sampling
This file will contain a MATLAB code that basically displays a figure whenever a range of frequencies are entered within the variables Fn1 to Fn4. One of these will be the Nyquist Variable; the Nyquist Frequency is the highest frequency amongst other frequencies, this is essentially used to create the "Nyquist Rate" variable, which is double the Nyquist Frequency.
The Sampling Frequency is then determined by multiplying the Nyquist Rate by five, all of this is done to preserve the full information in the signal, avoiding loss of information on the possibilities that the signal may contain high frequency components. 
After this, an analog graph(continuous data) and a sample graph(discrete data) of the nyquist frequency are created, combined within a figure to display the amount of samples the discrete graph takes from the continuous data. As the importance of the multiplication rate of the frequency was stated in the previous section, simply reducing this multiplier reduces the sampling rate, thereby generating an overly undersampled frequency.

# Example of Continuos Data Graph and Sampling with Nyquist Frequency set at 8 Hertz
![image](https://user-images.githubusercontent.com/48869133/165072917-60177fc5-fb9b-4898-a5c0-ae921ab8c0ad.png)

# Example of Lowered Multiplier for Sampling Rate
![image](https://user-images.githubusercontent.com/48869133/165074582-84149fd1-dd85-43ad-9b7d-fcd98fe53510.png)
![image](https://user-images.githubusercontent.com/48869133/165074698-51e97555-20cb-44dd-a278-3db7583cae6b.png)

The above image shows the result of undersampling through the use of a lowered multiplier(1), if this signal were to be re-processed, the exact signal would **not** be recreated, creating an entirely different waveform altogether due to the small number of sampling points.
