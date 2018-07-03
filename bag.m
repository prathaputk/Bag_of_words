%Intialize Database
%Change Folder path to desired folder in below line
imds=imageDatastore('C:\Users\PRATHAP\Desktop\AI\images','IncludeSubfolders',true,'LabelSource','foldernames')
[trainingSet,testSet] = splitEachLabel(imds,0.7,'randomize');
bag=bagOfFeatures(imds)
classifier = trainImageCategoryClassifier(imds,bag)
confMat = evaluate(classifier,testSet)
%save the workspace variables to be used by the query 
save('imds')
save('bag')
save('classifier')
