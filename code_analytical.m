function code_analytical(Temperatures)
% you could generate Temperatures as this: T = (100:10:300); then call this
% function as: code(T);

KB = 1;
k = 1;

fig = figure();
hold on;
for i = 1:size(Temperatures, 2);
    Temperature = Temperatures(i);
    space = 0.1;
    asquare = 2*Temperature;
    rawx = (0:space:sqrt(2*Temperature));

    x = [];
    y = [];
    for j = 1:(size(rawx, 2)-1);
        x(j) = (rawx(j)+rawx(j+1))/2;
        y(j) = 1/(pi*sqrt(asquare-x(j)^2));
    end;

    x = [fliplr(-x), x];
    y = [fliplr(y), y];

    plot(x,y);
end;
title('Analytical results of probability distribution');
hold off
