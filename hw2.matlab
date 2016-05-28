% Course:
% ID:
% Name:
% E-mail:
% Date:
% File Name:

n = 1:1:999 ;
n1= n - 1000 ;
n1= -n1 ;

%前半部的三角波
x1 = n ;
x1( n > 500 ) = 0 ; 

%後半部的三角波
x2 = n1 ;
x2( n1 >= 500 ) = 0 ;

%三角波	x1[n]
x1 = x1 + x2 ;

% x2[n]
n1 = 1:500;
x2 = n1 ;
x2( n1 <= 500 ) = 1 ;

%y[n]
tic
x = myconv( x1 , x2 ) ;
toc
subplot( 3 , 1 , 1 ) , stem( n , x1 ) ; ylabel('x1[n]')
subplot( 3 , 1 , 2 ) , stem( n1 , x2 ) ; ylabel('x2[n]')

nn=n(1)+n1(1):1:n(end)+n1(end) ;
subplot( 3 , 1 , 3 ) , stem( nn , x ) ; ylabel('x[n]')