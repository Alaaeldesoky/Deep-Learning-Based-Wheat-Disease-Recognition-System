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

Different Augmentation Techniques were applied to Increase the Dataset. The augmentation Techniques Code are in 

| Augmentation Technique | Range          |
|------------------------|--------------  |
|  Affine Transformation |                |
| Translation            | [-2,2]         |
| Rotate                 | [-30,30]       |
| Scaling                | [-1.5,1.5]     |
| Mirroring              | [True, True]   |
| Sharpening             | [R=7, A=2]     |
| Enhancing Contrast     |  R=0.1-0.3,
                          G=0.2-0.4, B=0,
                          R=0.6-0.8, G=0.7-
                          0.9, B=1        |
| Adjusting Brightness   |[γ=0.75, γ=0.5] |
