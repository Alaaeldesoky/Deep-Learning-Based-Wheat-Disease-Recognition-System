path= 'E:\New folder\Stripe rust';
d=struct2table(dir(fullfile(path,'*.JPG')));


n_images=2;
num_images=size(d,1);



for j=1:num_images 
for k=1:n_images
    
    
    im=imread(fullfile(d.folder{j},d.name{j}));
    
     imF = imadjust(im,[.1  .2 0; .7 .9 1],[]);
    
    path_w=strcat(d.folder,'\',erase(d.name{j},'.JPG'));%,'aug.png'));
    path_w=sprintf('%saug%i.JPG',path_w{j},k);
    
    
    %imshow(imF)
    imwrite(imF,path_w)
      
end
end