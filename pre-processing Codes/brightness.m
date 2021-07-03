path= 'E:\New folder\Leaf Blotch';
d=struct2table(dir(fullfile(path,'*.JPG')));


n_images=2;
num_images=size(d,1);



for j=1:num_images 
for k=1:n_images
    
    
    im=imread(fullfile(d.folder{j},d.name{j}));
    gamma=0.75;
    gamma1=0.65;
    gamma2=0.5;
     imF = imadjust(im,[],[],gamma);
     imF1 = imadjust(im,[],[],gamma1);
     imF2 = imadjust(im,[],[],gamma2);
    
    path_w=strcat(d.folder,'\',erase(d.name{j},'.JPG'));%,'aug.png'));
    path_w=sprintf('%saug12%i.JPG',path_w{j},k);
    
    
    %imshow(imF)
  % imwrite(imF,path_w)
  % imwrite(imF1,path_w)
   imwrite(imF2,path_w)
      
end
end