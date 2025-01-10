
=======
# Indian Sign Language (ISL) Text To Speech Translation in Real time 

Welcome to the **Indian Sign Language (ISL) Text To Speech Translation in Real time**! This project bridges the gap between spoken and sign languages, enabling seamless communication for individuals with hearing or speech impairments. The system supports two primary functionalities:

1. **ISL Detection and Translation**: Detects hand signs using **MediaPipe** and translates them into sentences in the user's native language.
2. **Speech to ISL Translation**: Converts spoken language into ISL by displaying corresponding sign images from the dataset.

---

## Key Features

### 1. **ISL Detection and Sentence Translation**
- **Hand Sign Detection**: Uses **MediaPipe** to detect both one-handed and two-handed signs.
- **Sentence Construction**: Converts detected characters into meaningful sentences.
- **Native Language Translation**: Translates the constructed sentence into the user's chosen native language.
- **Real-Time Feedback**: Displays the camera feed, detected letters, constructed sentences, and suggested words on a user-friendly GUI.

#### Process Workflow:
1. **Hand Tracking**: MediaPipe detects hand landmarks and extracts features.
2. **Character Prediction**: The model predicts the ISL character based on hand landmarks.
3. **Sentence Construction**:
   - Displays the detected character.
   - Constructs a sentence by appending detected characters.
   - Avoids repeated detections of the same character.
4. **Native Language Translation**:
   - Converts the English sentence to the user’s native language using a translation API.

![ISL Detection Process](static\images\ISL.png)

---

### 2. **Speech to ISL Translation**
- **Speech Recognition**: Converts user’s speech input into text.
- **Text to ISL Conversion**: Maps words to ISL sign images using a pre-trained dataset.
- **Sequential Display**: Displays corresponding ISL images for each word in real-time.

#### Process Workflow:
1. **Speech Input**: User speaks into the microphone.
2. **Speech-to-Text Conversion**: Recognizes the spoken words using a speech recognition library.
3. **Sign Image Retrieval**:
   - Retrieves ISL sign images for each word.
   - Displays the images sequentially to represent the sentence visually.

![Speech to ISL Translation Process](static\images\speech_to_signimage_jpg-converter.jpg)

---

## Technologies Used

### Backend
- **Python**
  - TensorFlow and Keras for deep learning models.images/speech_to_isl_translation.png
  - OpenCV for real-time video feed processing.
  - MediaPipe for hand landmark detection.

### Frontend
- **HTML, CSS, JavaScript**
  - User-friendly interface for camera feed and translation displays.

### Libraries and APIs
- **Speech Recognition**: For converting speech to text.
- **Translation API**: For translating English sentences into native languages.
- **MediaPipe**: For hand tracking and pose detection.

---

## Dataset
- **ISL Dataset**:
  - 35 Classes: A-Z and 1-9.
  - 1,200 grayscale images per class.
  - Adaptive thresholding applied to enhance feature extraction.

| **Class** | **Examples** | **Processed Images** |
|-----------|--------------|----------------------|
| A-Z       | Letters      | Adaptive Thresholding |
| 1-9       | Numbers      | Adaptive Thresholding |



![Sample Dataset](static\images\image.png)

---

## Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/Swarajsolanke/Indian_Sign_to_text_translation.git
   ```
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. Run the application:
   ```bash
   python app.py
   ```

---

## User Interface

### ISL Detection
- **Camera Feed**: Displays live video feed.
- **Adaptive Thresholding**: Shows processed hand landmarks.
- **Detected Character**: Displays the current detected ISL character.
- **Constructed Sentence**: Shows the sentence being formed.
- **Translation**: Converts the sentence to the user’s native language.

![ISL Detection UI](images/isl_detection_ui.png)

### Speech to ISL
- **Speech Input**: Allows the user to speak a sentence.
- **ISL Image Display**: Sequentially displays ISL images for the spoken sentence.

![Speech to ISL UI](images/speech_to_isl_ui.png)

---

## Visual Representations

### Workflow Diagrams
#### ISL Detection Workflow:
```mermaid
graph TD
A[Camera Input] --> B[MediaPipe Hand Tracking]
B --> C[Landmark Extraction]
C --> D[Character Prediction Model]
D --> E[Sentence Construction]
E --> F[Native Language Translation]
```

#### Speech to ISL Translation Workflow:
```mermaid
graph TD
A[Speech Input] --> B[Speech-to-Text Conversion]
B --> C[Word Extraction]
C --> D[ISL Image Mapping]
D --> E[Sequential Display of Images]
```

### Colorful Logos
![Project Logo](images/colorful_logo.png)

---

## Future Enhancements
- **Improved Accuracy**: Fine-tune the detection model for two-handed signs.
- **Dynamic Word Suggestions**: Implement real-time word prediction.
- **Offline Translation**: Enable translation without internet access.

---

## Contributions
We welcome contributions! Please follow these steps:
1. Fork the repository.
2. Create a feature branch.
3. Commit your changes.
4. Create a pull request.

---

## License
This project is licensed under the [MIT License](LICENSE).

---

## Contact
For any questions or feedback, please contact:
- **Email**: your-email@example.com
- **GitHub**: [YourGitHub](https://github.com/your-github)

---

Thank you for using the Indian Sign Language Detection and Translation Project! Together, let’s make communication inclusive and barrier-free.

>>>>>>> bd9c9560e4ba78b36719374b9e6bb563016255c4
