WM;
Ivalue=[];
for i=1:16
    for n=i:16
        I=0;
        for j=1:6
            I=I+min(WM(i,j),WM(n,j));
            j=j+1;
        end
        Ivalue(i,n)=I;
        n=n+1;
    end
    i=i+1;
end