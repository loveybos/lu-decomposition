clc,clear all,close all
global A;
A=input('输入矩阵A:');
[L,U]=myLUfun(A);%调用LU子程序
L
U
