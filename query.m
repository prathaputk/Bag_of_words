%load variables from the initializtion
load('imds');
load('bag');
load('classifier');
I=imread('C:\Users\PRATHAP\Desktop\AI\download.jpg');%change the path to desired image
[labelIdx,score] = predict(classifier,I);
Category=classifier.Labels(labelIdx)
