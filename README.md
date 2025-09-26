# VIStudio
_No-code Image Deep Learning App (MATLAB)_  
**Major Update:** 2025-10 
  
---
  
## ✨ Key Features

1. **Image Labeler** — Create/clean datasets and export ground truth.
2. **Classification** — Train with popular backbones.
3. **Object Detection (YOLOX)** — Train & evaluate with built-in tools.
4. **Anomaly Detection** — 🚧 *WIP* (FCDD / PatchCore in progress; EfficientAD planned).


## 🏷️ Version
**v1.0 (test) -**   
✅Image Labeler  
✅Classification  (other model not import)  
✅Object Detection  (other model not import)  
❌Anomaly Detection
  

🔧 Requirements
---
__MATLAB__: MATLAB 2024b  
  
__Toolbox__: Deep Learning , Image Processing, Computer Vision, Parallel Computing  
  
__Support Package__: Automated Visual Inspection Library &  pretrain model packages
  
__Automated Visual Inspection Library__:    
- [Computer Vision Toolbox Automated Visual Inspection Library](https://www.mathworks.com/matlabcentral/fileexchange/116555-computer-vision-toolbox-automated-visual-inspection-library?s_tid=ta_fx_results)  
  
__(Optional)Pretrain Model Packages__:  
- [resnet18](https://www.mathworks.com/matlabcentral/fileexchange/68261-deep-learning-toolbox-model-for-resnet-18-network?s_tid=srchtitle)  
- [resnet50](https://www.mathworks.com/matlabcentral/fileexchange/64626-deep-learning-toolbox-model-for-resnet-50-network?s_tid=srchtitle)  
- [xception](https://www.mathworks.com/matlabcentral/fileexchange/70988-deep-learning-toolboxtm-model-for-xception-network?s_tid=srchtitle)  
- [inceptionv3](https://www.mathworks.com/matlabcentral/fileexchange/65679-deep-learning-toolbox-model-for-inception-v3-network?s_tid=srchtitle)  
- [mobilenetv2](https://www.mathworks.com/matlabcentral/fileexchange/70986-deep-learning-toolbox-model-for-mobilenet-v2-network?s_tid=srchtitle)  
- [densenet201](https://www.mathworks.com/matlabcentral/fileexchange/68803-deep-learning-toolbox-model-for-densenet-201-network?s_tid=srchtitle)  
  
  
🚀Quick Start
---
1. **Open the app**
   - Launch `VIStudio_demo.mlapp` — this is the entry screen.  
    ![](https://github.com/MoonUsagi/VIStudio/blob/main/Image/Interface.JPG)


2. **Label data (Object Detection)**
   - Use **Labeler** to draw bounding boxes on your images.
   - Export ground truth via **Labeler → Export → Ground Truth (.mat)**
     - **VIStudio Labeler** exports a table named **`exportROI`**  
     - **MATLAB Image Labeler** exports a table named **`gTruth`**   
   - The app accepts either `exportROI` or `gTruth` when you import the `.mat`.  
    ![](https://github.com/MoonUsagi/VIStudio/blob/main/Image/Labeler.JPG)


3. **Try Classification with a sample dataset**
   - Use the **Dog_Images** sample as your classification dataset
     (folders-as-labels are supported: one subfolder per class).  
    ![](https://github.com/MoonUsagi/VIStudio/blob/main/Image/Classication_2.JPG)
    ![](https://github.com/MoonUsagi/VIStudio/blob/main/Image/Classication_1.JPG)

4. **Train Object Detection with ground truth**
   - (Sample data) You can annotate images in `Dataset\RabbitDS` using **Labeler**,
     then export the ground truth (`exportROI` or `gTruth`) for training.  

   - Click **Import Ground Truth** and select the `.mat` you exported above
     (`exportROI` from VIStudio Labeler or `gTruth` from MATLAB Image Labeler).  

   - Configure Train/Val/Test split and start training (YOLOX).
     ![](https://github.com/MoonUsagi/VIStudio/blob/main/Image/ObjectDetection_1.JPG)
     ![](https://github.com/MoonUsagi/VIStudio/blob/main/Image/ObjectDetection_2.JPG)   


📌 Status / Roadmap
---
✅ Image Classication v1.0 (training + valuation + explained)

✅ YOLOX Object Detection v1.0 (training + evaluation)

🚧  Anomaly Detection Pipeline v1.0 — *in progress*
  
⏳ EfficientAD Anomaly Pipeline (planned)

  
## 🗓️ Project Timeline

- **2025-10** — **Major update**
- **2025-01** — **Initial build** by **Fred Liu** & **Tim Yeh**