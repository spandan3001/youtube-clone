```markdown
# YouTube UI Clone (Flutter)

This is the **first commit** of a YouTube-style app built with Flutter.  
Currently, the project implements only the **basic UI layer**.  
In upcoming commits, I will extend this project to include **backend integration** and more advanced features.

---

## 🚀 Features (Current Commit)
- YouTube-style **home feed**:
    - Video thumbnails
    - Channel avatar
    - Title & metadata (views, author, uploaded time)
- **Bottom navigation bar** (Home, Shorts, Subscriptions, Library)
- **Dark mode** support
- Placeholder for **Mini Player**

---

## 📂 Project Structure
```

lib/
├── main.dart                 # Entry point
├── data.dart                 # Mock data
├── models/                   # Data models (Video, Author)
├── widgets/
│    ├── video_card.dart      # Video card widget
│    └── mini_player.dart     # Mini player placeholder
└── screens/
└── nav_screen.dart      # Bottom navigation and main layout

````

---

## 🛠️ Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/spandan3001/youtube.git
cd youtube-ui-flutter
````

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Run the app

```bash
flutter run
```

---

## 📌 Roadmap

This project follows a step-by-step full-stack roadmap:

1. **Docker & Backend Setup**
    - PostgreSQL with Docker Compose
    - FastAPI skeleton app

2. **Authentication**
    - AWS IAM & Cognito setup
    - User Signup & Login APIs
    - Auth state persistence with tokens & cookies

3. **Video Upload & Processing**
    - S3 Buckets & SQS
    - Consumer microservice for transcoding
    - FFMPEG + HLS/DASH streaming
    - CloudFront CDN integration

4. **APIs**
    - Presigned URL for video upload
    - Store metadata in PostgreSQL
    - Get all videos / caching with Redis

5. **Frontend (Flutter)**
    - Signup/Login UI
    - State management for auth
    - Display videos & playback with DASH player

---

## 📄 License

This project is for **educational purposes only**.
Not affiliated with or endorsed by **YouTube** or **Google**.

```
```
