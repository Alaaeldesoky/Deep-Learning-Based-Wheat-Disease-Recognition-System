modedl=load('resnet_affine.mat');
DatasetPath = 'F:\watersheds images\images\Stripe rust';
imds = imageDatastore(DatasetPath, ...
    'IncludeSubfolders',true,'LabelSource','foldernames');

T=countEachLabel(imds)
imgtotal=length(imds.Files);
[YPred,probs]= classify(net,imds);
accuracy = mean(YPred == imds.Labels)

idx = randperm(numel(imds.Files),4);
figure
for i = 1:4
    subplot(2,2,i)
    I = readimage(imds,idx(i));
    imshow(I)
    label = YPred(idx(i));
    title(string(label) + ", " + num2str(100*max(probs(idx(i),:)),3) + "%");
end