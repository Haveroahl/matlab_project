function y = tichphanSimpson(fx,a,b,N)
h = (b-a)/N;
y = fx(a) + fx(b);
for i = 1:1:N-1
    if mod(i,2)~= 0
        y = y + 4*fx(a+i*h);
    else
        y = y + 2*fx(a+i*h);
    end
end
y = (h/3)*y;
%fprintf('Tích phân Simpson: %.8f\n',y);
end
