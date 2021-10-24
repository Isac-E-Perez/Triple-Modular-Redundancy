# Triple Modular Redundancy Project

### About:

For this project, I created a triple modular redundacy logic circuit with the use of VHDL code. The triple modular redundancy is a fault tolerant form of N-modular redundancy. The logic circuit has 3 identical systems, providing the same 3 outputs. I expect those outputs to be identical. However, that might not be the case. So, I implement a majority voting system in which if at least 2 outputs are identical, I pick that output to be correct. If any one of the three systems fails, the other two systems can correct and mask the fault. If all 3 outputs are different, I have an error (y = '1').
 
### Note:

### Results: 
