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
| Category        | System Architecture  | Technologies Used  |
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
  <h3> Menu</h3>
<p align="center">
  <img src="https://raw.githubusercontent.com/ayoub2205/FindUs-Facial-Recognition-for-Missing-Persons/main/images/img1.png" width="1200"/>
   
   <h3> Missing Person List (Home page)</h3>
   <p align="center">
   <img src="https://github.com/ayoub2205/FindUs-Facial-Recognition-for-Missing-Persons/blob/d9eed471415b8f5e94eb1278335a3f2fcfac231f/images/img2.png" width="1200"/>
</p>

  <h3> Missing Person Profile</h3>
<p align="center">
  <img src="https://raw.githubusercontent.com/ayoub2205/FindUs-Facial-Recognition-for-Missing-Persons/main/images/img3.png" width="1200"/>
</p>

<h3>  Face Detection (Detect a Missing Person)</h3>
<p>This feature allows users to upload and run facial recognition using the button. 
   
- Displays error messages if needed
  
- Detects face using AI algorithms  
</p>
<p align="center">
  <img src="https://raw.githubusercontent.com/ayoub2205/FindUs-Facial-Recognition-for-Missing-Persons/main/images/img4.png" width="1200"/>
</p>

  <h3> Detection Process and Results</h3>
  <p>The system displays matching results to help identify the missing person.</p>
<p align="center">
  <img src="https://raw.githubusercontent.com/ayoub2205/FindUs-Facial-Recognition-for-Missing-Persons/main/images/img5.png" width="1200"/>
</p>


<h3> Add a Missing Person</h3>
<p>Before adding a case, users must authenticate:
</p>
<p align="center">
  <img src="https://raw.githubusercontent.com/ayoub2205/FindUs-Facial-Recognition-for-Missing-Persons/main/images/img7.png" width="1200"/>
</p>

<p>After authentication, users can submit a new missing person case:

<p align="center">
  <img src="https://raw.githubusercontent.com/ayoub2205/FindUs-Facial-Recognition-for-Missing-Persons/main/images/img6.png" width="1200"/>
</p>
<h3>Validation System</h3>

- Fill a form with personal details and images
   
- Data is stored in the database and added to the model dataset
  
- The case becomes available for detection and search</p>

- The system checks if the email is already used
  
- Prevents duplicate entries
  
- Ensures data integrity and reliability

# Getting Started :
**Installation**
1. Clone the repository
   ```bash
   git clone https://github.com/ayoub2205/FindUs-Facial-Recognition-for-Missing-Persons.git
   
2. Navigate to project folder :
   ```bash
   cd FindUs-Facial-Recognition-for-Missing-Persons
   
**Usage**
1. Run the backend server :
   ```bash
   python app.py
   
3. Open your browser:
   ```bash
   http://localhost:5000
   
**Project structure**
```bash
FindUs/
│
├── dataset/
├── models/
├── static/
├── templates/
├── app.py
├── train.py
├── requirements.txt
└── README.md
