%Function mileage
function acum=mileage(signal,threshold)
acum=0;
i=1;
while i<length(signal)
    variation=abs(signal(i+1)-signal(i));
    if variation>threshold
        acum=acum+variation;
    end
    i=i+1;
end

