function falsePosition(func,xl,xu,es,maxiter)
%Determines root of function with False Position method
%   Inputs:
%       func:function
%       xl:lower guess
%       xu: upper guess
%       es:desired relative error (default: 0.0001%)
%       maxiter: # of iterations desired (default: 200)
%   Outputs:
%       root: root of function
%       fx:function evaluated at root location
%       ea: approximate relative error %
%       iter: how many iterations performed
format long
iter=0;

if nargin<3
    disp('3 iputs needed')
elseif nargin==4;
    prompt='Use default for es or maxiter'
    c=input(prompt)
        if c==es
            es=0.001;
        elseif c==maxiter
            maxiter=200;
        end
%      Lets user decide if es or maxiter should be defaulted
elseif nargin==3
    es=0.001;
    maxiter=200;
end
% Lets user use default value for maxiter and/or es
if xu>xl
    disp('Lower guess higher than upper guess')
end
if feval(func,xl)==feval(func,xu)
    disp ("Error: root not bounded")
end
ea=100;
xr=0;
while ea<es||iter<maxiter
    xr_prev=xr;
    xr= xu-(feval(func,xu)*(xl-xu)/(feval(func,xl)-feval(func,xu)));
    ea=abs((xr-xr_prev)/xr)*100;
    %Calculates absolute relative error by comparing present to previous
    if xr<0&&xu<0||xr>0&&xu>0
        xu=xr;
    else
        xl=xr;
    end

    iter=iter+1;
end

root=xr;
fx=func(root);
fprintf('The root for this function is %d\n',root)
fprintf('The iteration for this function is %d\n',iter)
fprintf('The function at root for this function is %d\n',fx)
fprintf('The approximate error for this function is %d\n',ea)
end




