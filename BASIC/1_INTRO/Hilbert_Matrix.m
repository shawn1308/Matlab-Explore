m = 5;
Hil_Mat = zeros(m); % Hilbert matrix
Check_Mat = zeros(m); %checker Board matrix

for i=1:m
    for j=1:m
        den = i + j - 1; %denominatuer
        Hil_Mat(i,j) = 1 / den;
        Check_Mat(i,j) = (-1).^(den);
    end
end

figure(1), clf

subplot(121)
imagesc(Hil_Mat)
axis square, title('Hilbert Matrix')
set(gca,'xtick',[],'ytick',[])

subplot(122)
imagesc(Check_Mat)
axis square, title('Checkerboard Matrix')
set(gca,'xtick',[],'ytick',[])