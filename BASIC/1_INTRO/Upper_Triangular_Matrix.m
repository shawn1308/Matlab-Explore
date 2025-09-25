m = 50;
UT_Mat = zeros(m); % Hilbert matrix

for i=1:m
    for j=1:m
        if i<j
            UT_Mat(i,j) = 1;
        end
    end
end

figure(1), clf

subplot(121)
imagesc(UT_Mat)
axis square, title('Upper Triangular Matrix')
set(gca,'xtick',[],'ytick',[])