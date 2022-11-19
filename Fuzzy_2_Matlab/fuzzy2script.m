%Interval type-2 Fuzzy Inference Model
%Created by Gabriel Fanelli

x1 = [1, 16:16:240 , 254]; %input vector 1
x2 = [1, 16:16:240 , 254]; %input vector 2
y_new = zeros(length(x1),length(x2));
for i=1:length(x1)
    for j = 1:length(x2)
        y_new(i,j)=fuzzy2teorico(x1(i),x2(j)); % output of IT2-FLS
    end
end

surf(y_new)