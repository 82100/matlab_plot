clear all ;
close all;
% Course:	 Signals and Systems
% ID:		 403240102
% Name:		 張書華
% E-mail:	 andy850821@gmail.com
% Date:		 May 4,2016
% File Name: HW403240102.m

%%% define the variables

N1 = 999 ;
N2 = 500 ;
nn = 1 + 1 : N1 + N2 ;		% t for x[]


x1 = 1 : N1 ;
x2 = 1 : N2 ;

for n = 1 : N1				% x1[n] value
	if n <= ( N1 + 1 ) / 2
		x1( n ) = n ;
	else
		x1( n ) = 999 - n + 1 ;
	end
end

for n = 1 : N2				% x2[n] value
	x2( n ) = 1 ;
end

%%% plot the result in separate figure

x = conv( x1 , x2 );
subplot( 2 , 1 , 1 ) , stem( nn , x ) ; ylabel('x[n]');
title('by conv');

tic
x = myconv( x1 , x2 ) ;
toc
subplot( 2 , 1 , 2 ) , stem( nn , x ) ; ylabel('x[n]');
title('by myconv');
%Elapsed time is 0.020977 seconds.