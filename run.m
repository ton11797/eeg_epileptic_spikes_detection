[a,b,c] = pop_biosig('C:\Users\Denice\Downloads\data\data\DA00101E.EEG');
d =1;

s = 2;
if s == 1
    for i = 1:a.nbchan
        if mod(i,5) == 1
           figure
           d=1;
        end
        subplot(5,1,d);       % add first plot in 2 x 1 grid
        plot(a.times,a.data(i,:));
        title(a.chanlocs(i).labels);
        d = d+1;
    end
else
    for i = 1:a.nbchan
        subplot(a.nbchan,1,i);       % add first plot in 2 x 1 grid
        plot(a.times,a.data(i,:));
        title(a.chanlocs(i).labels);
        d = d+1;
    end
end