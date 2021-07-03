imagedata='F:\watersheds images\Healthy Leave';
imds = imageDatastore(imagedata,'IncludeSubfolders',true,'FileExtensions','.jpg','LabelSource','foldernames')
fileList = imds.Files;
T=countEachLabel(imds)
imgtotal=length(imds.Files);
img = readimage(imds,1);
size(img)
numTrainFiles = .70;
numvalidationFiles = .15;
numtestFiles = .15;
[imdsTrain,imdsValidation,imdsTest] = splitEachLabel(imds,numTrainFiles,numvalidationFiles,numtestFiles,'randomize')

inputSize=[224 224 3];
augimds_Train=augmentedImageDatastore(inputSize, imdsTrain,'ColorPreprocessing','gray2rgb');
augimds_Validation=augmentedImageDatastore(inputSize, imdsValidation,'ColorPreprocessing','gray2rgb');

layers = [
    imageInputLayer([224 224 3])
    
    convolution2dLayer(3,8,'Padding','same')
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2,'Stride',2)
    
    convolution2dLayer(3,16,'Padding','same')
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2,'Stride',2)
    
    
     convolution2dLayer(3,32,'Padding','same')
    batchNormalizationLayer
    reluLayer
     maxPooling2dLayer(2,'Stride',2)


 convolution2dLayer(3,64,'Padding','same')
    batchNormalizationLayer
    reluLayer
     maxPooling2dLayer(2,'Stride',2)

 convolution2dLayer(3,128,'Padding','same')
    batchNormalizationLayer
    reluLayer
     maxPooling2dLayer(2,'Stride',2)

 convolution2dLayer(3,256,'Padding','same')
    batchNormalizationLayer
    reluLayer
     maxPooling2dLayer(2,'Stride',2)

 convolution2dLayer(3,512,'Padding','same')
    batchNormalizationLayer
    reluLayer
    
    fullyConnectedLayer(7)
    softmaxLayer
    classificationLayer];


options = trainingOptions('sgdm', ...
  'InitialLearnRate',0.01, ...
   'MaxEpochs',40, ...
   'Shuffle','every-epoch', ...
    'ValidationData',augimds_Validation, ...
    'ValidationFrequency',30, ...
    'Verbose',false, ...
    'Plots','training-progress');
net=trainNetwork(augimds_Train,layers,options);
YPred = classify(net,augimds_Validation);
YValidation = imdsValidation.Labels;

accuracy = sum(YPred == YValidation)/numel(YValidation)


%a=5;
%b=5;
%N=randperm(imgtotal,a*b);
%idx=1;
%for j=1:a
   % for k=1:b
      %  imge=(readimage(imds,N(idx)));
      %  subplot(a,b,idx);
      %  imshow(imge);
      %  idx=idx+1;
 %   end
%end


