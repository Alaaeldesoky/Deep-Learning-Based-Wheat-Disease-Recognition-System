# Deep-Learning-Based-Wheat-Disease-Recognition-System
Increased agricultural production equipped with the modern technological patterns is a stipulation to meet the demands of today’s growing population and in such a scenario, identification and mitigation of different crop diseases is equally important which can otherwise undermine the agricultural yield and cause a significant economic loss as well as global hunger.

For dataset:
https://drive.google.com/file/d/1LRQWWcXLGFcfyxHIMkZnorCHOhQCVZCD/view?usp=sharing

The Composition of Wheat Disease Dataset.

| Wheat Disease  | Number of Images |
|----------------|------------------|
| Stripe Rust    | 157              |
| Healthy Wheat  | 100              |
| Black Chaff    | 100              |
| Leaf Blotch    | 116              |
| Powdery Mildew | 140              |
| Leaf Rust      | 155              |
| Smut           | 147              |


![new11](https://user-images.githubusercontent.com/70446516/124352221-95791b80-dc18-11eb-8f4b-748f73a57658.PNG)


Different Augmentation Techniques were applied to Increase the Dataset. The augmentation Techniques Code are in Pre-processing codes Folder.

| Augmentation Technique | Range                         |
|------------------------|-------------------------------|
|  Affine Transformation |                               |
| Translation            | [-2,2]                        |
| Rotate                 | [-30,30]                      |
| Scaling                | [-1.5,1.5]                    |
| Mirroring              | [True, True]                  |
| Sharpening             | [R=7, A=2]                    |
| Enhancing Contrast     | [R=0.1-0.3],[G=0.2-0.4],[B=0] |
| Adjusting Brightness   | [γ=0.75,γ=0.5]                |

The CNN and Transfer Learning Code folder Includes the all files of Different Networks.

The custom design CNN on
augmented data using reflection and scaling gives the most promising result over all
models and augmentation techniques. An accuracy and F1 score of 99.16% and 0.99 has
been achieved in the identification of wheat disease as shown in Table

| Model        | Validation Accuracy | Test Accuracy | F1 Score |
|--------------|---------------------|---------------|----------|
| CNN          | 0.9797              | 0.9916        | 0.9918   |
| ResNet50     | 0.9350              | 0.9483        | 0.9480   |
| VGG16        | 0.8230              | 0.8566        | 0.8499   |
| AlexNet      | 0.9048              | 0.9343        | 0.9354   |
| Inception V3 | 0.9517              | 0.9573        | 0.9586   |
