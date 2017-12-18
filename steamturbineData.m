function m = steamturbineData(tr, tamb); 
%This function generates a set of values that can be used to solve for the
%constants (c1,c2,...,c9) by inputting data for(tr,tamb). To actually solve
%for the constants use \ built-in function. 
%
%tout = c1 + c2*tamb + c3*tamb^2 + c4*tr + c5*tr^2 + c6*tamb*tr +
%c7*tamb^2*tr + c8*tamb*tr^2 + c9*tamb^2*tr^2
%
%Example: 
%tr = [10 16 22]; tamb = [20 23 26];
%c = steamturbineData(tr, tamb)
%


lengAmb = length(tamb);
lengTr = length(tr);

initMatrix = lengAmb*lengTr;

%This creates two matrices filled with ones that  
%are initMatrix x InitMatrix.
v = ones(initMatrix,initMatrix);
z = ones(initMatrix,initMatrix);

%This loop populates matrix v by plugging in tamb into tout accordingly for
%each set of data.
for c = 1:lengAmb
    x = tamb(c);
    xx = [1 x (x^2) 1 1 x (x^2) x (x^2)];

    w = c*lengAmb -lengAmb;

    for i= 1:lengAmb
        v(i+w,:) = xx;
    end
end

%This loop populates matrix z by plugging in tr into tout accordingly for
%each set of data.
for d = 1:lengTr
    y = tr(d);
    yy = [1  1 1 y (y^2) y y (y^2) (y^2)];

    for j= 1:lengTr
        t = j*lengTr -lengTr;
        z(d+t,:) = yy;
    end
end

%This operation multiplies the matrix v and matrix z by element. 
m = v.*z;

%Author: Josias Ochoa   jocho016@ucr.edu
