function code_mc(Temperatures)

fig = figure();
hold on;
title('Monte Carlo simulations');

for k = 1:size(Temperatures,2);
    Temperature = Temperatures(k);

    initial_val = 0;
    x = [initial_val];
    beta = 1/Temperature;
    space = Temperature/1000;
    interval = sqrt(2*Temperature);
    iteration = 10000000;

    n = ceil(interval/space);
    mcx = zeros([1, 2*n]);
    mcx(floor((initial_val+interval)/space)) = 1;
    
    for i = 2:iteration;
        newx = rand*interval*2 - interval;
        if abs(newx) >= abs(x(i-1));
            x(i) = newx;
        else
            deltaE = 1/2*(newx^2 - x(i-1)^2);
            p = exp(beta*deltaE);
            temp = rand;
            if p > temp;
                x(i) = newx;
            else
                x(i) = x(i-1);
            end;
        end;
        index = floor(abs(x(i))/space+1);
        if x(i) >= 0;
            mcx(n+index) = mcx(n+index) + 1;
        else
            mcx(n-index+1) = mcx(n-index+1) + 1;
        end;
    end;

    for i = 1:size(mcx,2);
        mcx(i) = mcx(i)/iteration;
    end;

    px = (0:space:interval);
    position = [];
    for j = 1:(size(px, 2)-1);
        position(j) = (px(j)+px(j+1))/2;
    end;
    %position(j+1) = (px(j+1)+interval)/2;
    position = [fliplr(-position), position];
    if size(position,2) == size(mcx, 2);
        plot(position, mcx);
    else
        plot(position, mcx(1, 2:size(mcx, 2)-1));
    end;
end;
hold off;