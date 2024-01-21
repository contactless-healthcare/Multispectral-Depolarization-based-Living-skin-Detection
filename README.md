# Multispectral-Depolarization-based-Living-skin-Detection

This is code repository for the paper "Multispectral Depolarization based Living-skin Detection: A New Measurement Principle".

Inspired by the use of polarization for improving vital signs monitoring (i.e. specular  reflection removal), we proposed a novel dualpolarization setup and an elegant algorithm for anti-spoofing and patient living-skin segmentation, where the nature of multispectral depolarization of skin tissues is exploited to detect living-skin pixels, and only requires two images sampled at parallel and cross polarizations to estimate the characteristic chromaticity changes (R/G) caused by tissue depolarization. This method (called "MSD") was verified in both the laboratory and hospital settings (ICU and NICU), which is robust and highly reproducible.

In this repo, our proposed method is implemented in MSD.m using only 5 lines of Matlab code, and the Image file provides the demo images, including Lab, ICU, and NICU settings, for testing.



Please cite below paper if the code was used in your research or development.
    @ARTICLE{10409550,
      author={Wang, Wenjin and Shu, Huaijing and Lu, Hongzhou and Xu, Ming and Ji, Xiangyang},
      journal={IEEE Transactions on Biomedical Engineering}, 
      title={Multispectral Depolarization based Living-skin Detection: A New Measurement Principle}, 
      year={2024},
      pages={1-13},
      doi={10.1109/TBME.2024.3356410}
    }




