VIStudio — No-Code Image Deep Learning App (MATLAB)

A point-and-click app for image labeling, classification, object detection, and anomaly detection—built with MATLAB App Designer. Zero boilerplate; focus on your data and results.

Version: v0.8 (test) • MATLAB: R2024b
Some features are still WIP (e.g., EfficientAD pipeline for anomaly detection).

✨ Key Features

Image Labeler – Create/clean datasets, split Train/Val/Test, and export ground truth.

Classification – Train with popular backbones (ResNet-18/50, MobileNetV2, etc.).

Object Detection – YOLOX training, built-in augmentation, mAP metrics & PR curves.

Anomaly Detection – FCDD / PatchCore available (full EfficientAD planned).

🔧 Requirements
Type	What you need
MATLAB	R2024b
Toolboxes	Deep Learning, Image Processing, Computer Vision, Parallel Computing
Support/Libs	Computer Vision Toolbox Automated Visual Inspection Library (AVIL)
Pretrained Models (optional)	ResNet-18/50, Xception, Inception-v3, MobileNetV2, DenseNet-201

AVIL (YOLOX / FCDD / PatchCore)

Computer Vision Toolbox Automated Visual Inspection Library

Pretrained model packages

ResNet-18
 ·
ResNet-50
 ·
Xception
 ·
Inception-v3
 ·
MobileNetV2
 ·
DenseNet-201

🚀 Quick Start

Clone this repo and open MATLAB R2024b.

Install requirements via Add-On Explorer (toolboxes & AVIL) and download any pretrained models you plan to use.

Launch the app

From MATLAB: open the .mlapp file in App Designer and click Run, or call the class constructor if provided (e.g., app = VIStudio;).

Create a project

Import images (and labels for detection), or start labeling with the built-in Image Labeler.

Configure Train/Val/Test split.

Pick a task

Classification: choose a backbone, batch size, LR, epochs, augmentations.

Object Detection (YOLOX): set input size, augmentation toggles (flip/scale/rotation/color), optimizer & schedule.

Anomaly Detection: FCDD / PatchCore available; EfficientAD coming soon.

Train & Monitor

Built-in training progress plots; for detection you’ll see mAP (mAP@0.50 / mAP@.50:.95) and PR curves.

Evaluate & Export

Run inference on the Test set, view predictions, export CSV + annotated images.

🧰 What’s Inside (typical workflow)

Dataset tools: split, shuffle, stratify; preview images/labels.

Augmentations (toggleable): color jitter (Hue/Sat/Bright/Contrast), flips, scale/rotation; deterministic resize/letterbox for eval.

Training: YOLOX with validation metrics; Classification with transfer learning.

Evaluation: mAP, per-class AP, PR curves; export predictions.

🗺 Roadmap

 Full EfficientAD anomaly detection workflow

 More backbones & mixed precision training

 Batch inferencer & on-device packaging helpers

 One-click dataset importers (COCO/VOC)

🤝 Contributing

PRs and issues are welcome! Please describe your environment (MATLAB version, OS, GPU/CPU) and attach minimal repro steps or sample data when possible.

📄 License

Specify your project license here (e.g., MIT). Note that AVIL and pretrained model packages are distributed by MathWorks/File Exchange under their own terms—please review those licenses separately.

🙏 Acknowledgements

MathWorks Computer Vision Toolbox Automated Visual Inspection Library (AVIL)

Community pretrained model packages listed above