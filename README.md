# Overview

**FindUs** is a smart system designed to help locate missing persons using facial recognition technology.
The project leverages machine learning and computer vision to compare faces from images or video streams with a database of missing individuals.

# Objectives
- Develop an intelligent facial recognition system
- Detect and identify missing persons in real time or from images
- Improve the accuracy of person matching using deep learning models
- Provide a user-friendly interface for reporting and searching

# Features
- Face detection and recognition
- Upload image or video for search
- Real-time camera detection (optional)
- Database of registered missing persons
- Matching system with similarity score
- Web interface for easy interaction
- Alert system when a match is found

# Technologies Used and System Architecture
| Category        | System Architecture (Architecture du système) | Technologies Used (Technologies utilisées) |
|----------------|----------------------------------------------|--------------------------------------------|
| Frontend       | User Interface                         | Bootstrap / HTML / CSS / JavaScript             |
| Backend        | Web Framework                         |  Django                     |
| AI Model       | Facial Recognition                        | CNN, VGG16             |
| Computer Vision| Face Detection                         | OpenCV, MTCNN                                     |
| Database       | Data Storage                         | MySQL                          |
| Data Processing        | Data Handling              | Numpy / Pandas                        |

# Methodology

1. **Data Collection**  
   - Dataset collected from **NAMUS** (Missing Persons Database) 
   - Images + personal data stored in CSV format
   - Ensuring diversity (lighting, pose, background)  

2. **Face Detection**  
   - Using **MTCNN** algorithm
   - Extraction of face bounding boxes **(x, y, width, height)**
   - Face resizing to **128x128** pixels  

3. **Data Augmentation**  
   - Rotation, zoom, horizontal flip 
   - Increased dataset size (initially 441 images)
   - Improved model generalization
  
4. **Data Preprocessing**
   - Label encoding and categorization
   - Train/Test split **(80% / 20%)**  

5. **Feature Extraction & Modeling**  
   - **CNN model** for feature extraction
   - **VGG-16** pre-trained model
   - Generation of facial embeddings
6. **Training & Evaluation**
   - CNN Accuracy: **~85.5%**
   - VGG-16 Accuracy: **~99.84%**
   - Loss optimization and performance comparison
    
6. **Prediction**  
   - Identification of the closest match  
   - Output with confidence score
   - Results displayed via web interface
  
   # Project Screenshots :
   
