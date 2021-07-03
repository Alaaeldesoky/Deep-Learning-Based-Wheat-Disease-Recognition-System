path= 'F:\New fol';
d=struct2table(dir(fullfile(path,'*.JPG')));


n_images=9;
num_images=size(d,1);

augmenter = imageDataAugmenter( ...
    'RandXReflection',true, ...
    'RandYReflection',true, ...
    'RandXScale',[1.5 1.5], ...
    'RandYScale',[1.5 1.5]),

for j=1:num_images 
for k=1:n_images
    
    aug_im=augment(augmenter,imread(fullfile(d.folder{j},d.name{j})));
    path_w=strcat(d.folder,'\',erase(d.name{j},'.JPG'));%,'aug.png'));
    path_w=sprintf('%saug%i.JPG',path_w{j},k);
    imwrite(aug_im,path_w)
      
end
end
