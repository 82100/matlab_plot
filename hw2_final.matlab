clear all ;
close all;
% Course:	Signals and Systems
% ID:		403240102
% Name:		張書華
% E-mail:	andy850821@gmail.com
% Date:		May 4,2016
% File Name:HW403240102.m


%%% define the variables
N1 = 1:999 ;
N2 = 1:500 ;

x1 = N1.*( N1 <= 500) + ( 1000 - N1 ).*( N1 > 500 );			% x1[n] value
x2 = 1.*( N2 <= 500 );											% x2[n] value

nn = N1(1) + N2(1) : N1(end) + N2(end) ;						% t for x[]

x = conv( x1 , x2 );

%%% plot the result in separate figure

subplot( 2 , 1 , 1 ) , stem( nn , x ) ; ylabel('x[n]');
title('by conv');

tic
x = myconv( x1 , x2 ) ;
toc
subplot( 2 , 1 , 2 ) , stem( nn , x ) ; ylabel('x[n]');
title('by myconv’);


%Elapsed time is 0.020977 seconds.