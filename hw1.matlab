clear all ;
close all;
% Course:	 Signals and Systems
% ID:		 403240102
% Name:		 張書華
% E-mail:	 andy850821@gmail.com
% Date:		 May 4,2016
% File Name: HW403240102.m

%%% define the variables
t = 0:0.0001:10 ;

f = 3 ;										% f (Hz)

x1 = 2 * exp( (-t) / 4 ) ;					% 𝑥1(𝑡) = 2𝑒−𝑡/4

x2 = sin( 2 * pi * f * t + pi/2 ) ;			% 𝑥2(𝑡) = sin (2𝜋𝑓𝑡 + 𝜋2) where 𝑓=3Hz

x = x1.*x2 ;						% x = x1(t)x2(t)

tt = t(1)+t(1) : 0.0001 : t(end)+t(end);	% t for x(t)

%%% plot the result in separate figure
subplot( 2 , 1 , 1 ) , plot( t , x1 , t , x2 ) ;
ylabel('x1(t) & x2(t)');					
title('x2(t) & x1(t)');

subplot( 2 , 1 , 2 ) , plot(t,x);
ylabel('x(t)')
title('x(t) = x1(t)*x2(t)');