N1 = 1:999 ;
N2 = 1:500 ;

x1 = N1.*( N1 <= 500) + ( 1000 - N1 ).*( N1 > 500 );
x2 = 1.*( N2 <= 500 );

c = length(x1) + length(x2) - 1 ;

l = zeros(size(1:c));
w = (zeros(size(x2)))';

y = w*l ;

for n = 1:length(x2)
    y(n,n:length(x1)+n-1) = x1 * x2(n);
    if n > 1
        y(1,:) = y(1,:) + y(n,:);
    end
end