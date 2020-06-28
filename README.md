About
====
Some open source codes and related databasesata sets--TNO_Image_Fusion-Dataset of FTF methods are stored in this repository, and the final fusion results can also be found here
----------
 +  [FPDE_decompose.m](https://github.com/dly31/FTF/blob/master/FPDE_decompose.m) is used to decompose the original infrared and visible images in two scales. The high frequency layer highlights the visible details, while the low frequency layer smoothes the infrared pixel intensity.
  >![IR](https://github.com/dly31/FTF/blob/master/IR.png)![FPDE_low](https://github.com/dly31/FTF/blob/master/FPDE_low.png)
  >![VIS](https://github.com/dly31/FTF/blob/master/VIS.png)![FPDE_high](https://github.com/dly31/FTF/blob/master/FPDE_high.png)
 +  [The fuzzy region.rar](https://github.com/dly31/FTF/blob/master/fuzzy%20region.rar) is used to segment and redefine the original image from a single scale combined with the fuzzy idea. It is usually used to enhance the features with the cross operation of fpde, because both of them can distinguish the infrared and visible features.
 +  [The TNO Image Fusion Dataset](https://figshare.com/articles/TN_Image_Fusion_Dataset/1008029) contains nultispectral (intensified visual, near-infrared, and longwave infrared or thermal) nighttime imagery of different military relevant scenerios, registered with different multiband camnera systems
