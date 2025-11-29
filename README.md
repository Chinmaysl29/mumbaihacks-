# Medipilot Nexus - Health Management System

A comprehensive health management application with AI-powered medical report analysis using Google Gemini API.

## Features

- 📊 **Dashboard** - Comprehensive health overview with real-time metrics
- 📅 **Appointment Booking** - Schedule and manage medical appointments
- 🥗 **Diet & Nutrition** - AI Dietician chat and meal planning
- 💊 **Medication Management** - Track medications, dosages, and schedules
- 🛡️ **Insurance** - Manage insurance policies and claims
- 📄 **Medical Report Upload** - Upload and analyze medical reports (PDF, JPG, DOC)
- 📈 **Health Metrics Graphs** - Visualize health trends over time

## Tech Stack

### Frontend
- React 18
- Vite
- CSS3 with modern animations

### Backend
- Node.js
- Express
- SQLite Database
- Google Gemini AI API
- Multer (File Upload)
- PDF/DOC/Image Processing

## Setup Instructions

### 1. Frontend Setup

```bash
# Install dependencies
npm install

# Start development server
npm run dev
```

Frontend will run on `http://localhost:3001`

### 2. Backend Setup

```bash
# Navigate to backend directory
cd backend

# Install dependencies
npm install

# The .env file is already created with the Gemini API key
# Verify it exists: backend/.env

# Start backend server
npm start
# or for development with auto-reload
npm run dev
```

Backend will run on `http://localhost:3000`

### 3. Environment Variables

The `.env` file in the backend directory contains:
```
GEMINI_API_KEY=AIzaSyDyBaJxA9zKQSPkKGhS1Pyvjuqyvps7kEY
PORT=3000
NODE_ENV=development
```

## File Upload Support

The application supports uploading medical reports in the following formats:
- **PDF** (.pdf)
- **Images** (.jpg, .jpeg, .png)
- **Documents** (.doc, .docx)

Maximum file size: 10MB

## API Endpoints

- `POST /api/upload-report` - Upload medical report
- `GET /api/reports` - Get all uploaded reports
- `GET /api/reports/:id` - Get specific report with analysis
- `GET /api/metrics` - Get all health metrics for graphing
- `DELETE /api/reports/:id` - Delete a report

## Database

SQLite database (`medical_reports.db`) stores:
- Medical report metadata
- AI analysis results
- Extracted health metrics
- File paths and upload dates

## AI Analysis

The application uses Google Gemini AI to:
- Extract text from PDF and DOC files
- Analyze medical reports using vision API for images
- Extract health metrics, findings, and recommendations
- Generate structured JSON analysis results

## Project Structure

```
medipilot-nexus/
├── frontend/
│   ├── componests/
│   │   ├── medicalreportupload.jsx
│   │   ├── healthmetricsgraph.jsx
│   │   └── ...
│   ├── dashbord.jsx
│   ├── appointment.jsx
│   └── ...
├── backend/
│   ├── server.js
│   ├── package.json
│   ├── .env
│   ├── uploads/ (created automatically)
│   └── medical_reports.db (created automatically)
├── src/
│   ├── App.jsx
│   └── App.css
└── package.json
```

## Usage

1. Start both frontend and backend servers
2. Navigate to the Dashboard
3. Use "Medical Report Upload" section to upload files
4. View AI analysis results
5. Check "Health Metrics Trends" for visual graphs
6. Track metrics over time as you upload more reports

## Notes

- Make sure both servers are running for full functionality
- The database and uploads folder are created automatically
- AI analysis may take a few seconds depending on file size
- All uploaded files are stored in `backend/uploads/`

