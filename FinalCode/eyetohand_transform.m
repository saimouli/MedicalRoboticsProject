HOB = [1 0 0 11;0 1 0 8;0 0 1 30.5; 0 0 0 1]
HBC = [ 0.992854 	 -0.048056 	 -0.109236 -148.94; 
       -0.040557 	 -0.996732 	 0.069864 -13.85;
           -0.112236 	 -0.064934 	 -0.991558 422.21;
           0              0          0           1];
      
HOC= HOB*inv(HBC)

position = HOC*[89.87;-52.678;371.05;1]