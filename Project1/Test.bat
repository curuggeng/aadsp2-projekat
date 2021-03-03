: Delete log files first.
cd OutCmp
del Model0_vs_Model1.txt

cd ..

cd Debug
"Model0.exe" "Amp_Sweep.wav" "..//OutStreams//m0_3_2_0.wav" "3_2_0" "1" "1" 
"model1.exe" "Amp_Sweep.wav" "..//OutStreams//m1_3_2_0.wav" "3_2_0" "1" "1" 

"Model0.exe" "Amp_Sweep.wav" "..//OutStreams//m0_2_0_0.wav" "2_0_0" "1" "1" 
"model1.exe" "Amp_Sweep.wav" "..//OutStreams//m1_2_0_0.wav" "2_0_0" "1" "1" 

"Model0.exe" "Amp_Sweep.wav" "..//OutStreams//m0_0_2_0.wav" "0_2_0" "1" "1" 
"model1.exe" "Amp_Sweep.wav" "..//OutStreams//m1_0_2_0.wav" "0_2_0" "1" "1" 

"model2.exe" "Amp_Sweep.wav" "..//OutStreams//m2_3_2_0.wav" "3_2_0" "1" "1" 

cd ..

"PCMCompare.exe" OutStreams//m0_3_2_0.wav OutStreams//m1_3_2_0.wav 2> OutCmp//Model0_vs_Model1_3_2_0.txt
"PCMCompare.exe" OutStreams//m0_2_0_0.wav OutStreams//m1_2_0_0.wav 2> OutCmp//Model0_vs_Model1_2_0_0.txt
"PCMCompare.exe" OutStreams//m0_0_2_0.wav OutStreams//m1_0_2_0.wav 2> OutCmp//Model0_vs_Model1_0_2_0.txt
"PCMCompare.exe" OutStreams//m1_3_2_0.wav OutStreams//m2_3_2_0.wav 2> OutCmp//Model1_vs_Model2_3_2_0.txt


