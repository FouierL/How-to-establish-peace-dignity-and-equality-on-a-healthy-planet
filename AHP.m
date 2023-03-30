M=input('M=');
[~,n] = size(M);
[V,D] = eig(M);
Max_Eig = max(max(D));
CI = (Max_Eig - n) / (n-1);
RI=[0 0.0001 0.52 0.89 1.12 1.26 1.36 1.41 1.46 1.49 1.52 1.54 1.56 1.58 1.59 1.60 1.61 1.613 1.621 1.628];
CR=CI/RI(n);
disp('CI='); disp(CI);
disp('CR='); disp(CR);
if CR<0.10
    S = 1;
else
    disp('fause');
    S = 0;
end
if S == 1;
    [r,c] = find(D == Max_Eig,1);
    disp( V(:,c) ./ sum(V(:,c)) )
    sum_A = sum(M);
    B=ones(n,n);
    for i = 1:n
        B(:,i) = sum_A(i);
    end
    Stand_A = M ./ B ;
    disp(sum(Stand_A,2)./n)
    Geo_A = prod(M,2);
    Geo_n_A = Geo_A .^ (1/n);
    disp(Geo_n_A ./ sum(Geo_n_A))
else S == 0;
    disp('fause')
end