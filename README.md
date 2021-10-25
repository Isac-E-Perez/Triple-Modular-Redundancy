# Triple Modular Redundancy Project

### About:

For this project, I created a triple modular redundacy logic circuit with the use of VHDL code. The triple modular redundancy is a fault tolerant form of N-modular redundancy. The logic circuit has 3 identical systems, providing the same 3 outputs. I expect those outputs to be identical. However, that might not be the case. So, I implement a majority voting system in which if at least 2 outputs are identical, I pick that output to be correct. If any one of the three systems fails, the other two systems can correct and mask the fault. If all 3 outputs are different, I have an error (y = '1').

**Three identical logic circuits (logic gates) are used to compute the specified Boolean function**

![0](https://user-images.githubusercontent.com/89553126/138616667-b20d5d0b-2a79-4542-9b3c-e912c370cfbf.png)

**Black Box**

 ![Screen Shot 2021-10-24 at 5 40 47 PM](https://user-images.githubusercontent.com/89553126/138615822-4a12f7a6-8682-4701-82ab-35c8b7ceaf35.png)

### Results: 

In VHDL, *A*, *B*, and *C* are inputs (**IN**), and *f* and *y* are outputs (OUT) of my project.

**I/O's are specified here (the circuit is specified using a Hardware Desciption Language)**

<img width="1169" alt="Screen Shot 2021-10-25 at 9 50 10 AM" src="https://user-images.githubusercontent.com/89553126/138718445-732f9125-b26d-4ebb-9b4b-03ad42429fe2.png">

**Internal description of the logic circuit is specified here**

 <img width="348" alt="Screen Shot 2021-10-25 at 9 50 46 AM" src="https://user-images.githubusercontent.com/89553126/138718484-54c1d327-92da-4f2b-9d85-c438f8acf98b.png">
 
![0](https://user-images.githubusercontent.com/89553126/138616993-07a744f5-e5c8-4010-8d69-e0592745aa58.png)
