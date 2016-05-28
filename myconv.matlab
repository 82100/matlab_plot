function [ c ] = myconv(a,b)
    c = 1 : length(a) + length(b)-1;
    for n = 1 : length(a) + length(b)-1
       for m = 1 : n
            if n-m+1 <= length(a) && m <= length(b)
                c(n) = c(n) + a(n-m+1)*b(m);
            end
       end 
    end
end