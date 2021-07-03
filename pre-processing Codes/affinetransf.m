path= 'E:\New folder\Black Chaff';
d=struct2table(dir(fullfile(path,'*.JPG')));


n_images=10;
num_images=size(d,1);

augmenter = imageDataAugmenter(...
         'RandXShear' ,[-30 30],...
         'RandYShear' ,[-30 30] ),


for j=1:num_images 
for k=1:n_images
    
    
    im=imread(fullfile(d.folder{j},d.name{j}));
    
     %// You can also read a color image
     s   = ceil(size(im)/2);
      imP = padarray(im, s(1:2), 'symmetric', 'both');
    % imR = imrotate(imP, 45);
     imR=augment(augmenter,imP);
     S   = ceil(size(imR)/2);
imF = imR(S(1)-s(1):S(1)+s(1)-1, S(2)-s(2):S(2)+s(2)-1, :); %// Final form
    
    path_w=strcat(d.folder,'\',erase(d.name{j},'.JPG'));%,'aug.png'));
    path_w=sprintf('%saug%i.JPG',path_w{j},k);
    
    
    %imshow(imF)
    imwrite(imF,path_w)
      
end
end