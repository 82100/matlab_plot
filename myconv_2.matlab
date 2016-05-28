function [ c ] = myconv_2(a,b)
  l = zeros(size(1:length(a) + length(b) - 1));
  w = (zeros(size(b)))';
  y = w*l ;

  for n = 1:length(b)
      y(n,n:length(a)+n-1) = a * b(n);
      if n > 1
          y(1,:) = y(1,:) + y(n,:);
      end
  end
  c = y(1,:);
end