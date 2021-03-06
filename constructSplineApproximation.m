%% constructSplineApproximation
%
% Given a function or a set of points, construct a spline approximating f
% using the data in splineData.
%
% Input
%   f
%       Can be a function handle or a set of points.
%   splineData
%       Information about the spline to be constructed.
%
% Output
%   d
%       Control points of the resulting spline.
%
function d = constructSplineApproximation(f,splineData,varargin)

if isa(f, 'function_handle') %f is a handle
    % Interpolate data from parametrizations with splines
    interpolS = splineData.interpolS;
    B_interpol = spcol( splineData.knotsS, splineData.nS+1, brk2knt( interpolS, 1 ),'sparse');
    B_interpol_p = [B_interpol(:,1:splineData.nS) + B_interpol(:,end-splineData.nS+1:end), B_interpol(:,splineData.nS+1:end-splineData.nS)];
    
    %Evaluate parametrization
    data = f(interpolS);
    
    %Solve the linear interpolation problem
    d = B_interpol_p\data;
    
elseif isa(f, 'numeric') % f is a list of points
    noInterpolPoints = size(f,1);
    interpolS = linspace( 0, 2*pi, noInterpolPoints+1)';
    interpolS = interpolS(1:end-1); %remove last point, correponds to first point
    B_interpol = spcol( splineData.knotsS, splineData.nS+1, brk2knt( interpolS, 1 ),'sparse');
    B_interpol_p = [B_interpol(:,1:splineData.nS) + B_interpol(:,end-splineData.nS+1:end), B_interpol(:,splineData.nS+1:end-splineData.nS)];
    
    d = B_interpol_p\f;
else
    error('Unknown f');
end





end

