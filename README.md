# EcoFinds
EcoFinds – A sustainable second-hand marketplace built at OdooxNMIT hackathon. Buy, sell, and discover pre-owned items while promoting eco-friendly consumption and reducing waste.
# EcoFind - Full Stack Web App

EcoFind is a full-stack web application built using **Node.js/Express** (backend) and **React + TailwindCSS** (frontend), integrated with **Firebase** for authentication and data storage. The app provides a simple and secure way for users to log in, upload, and manage data.

---

## 👥 Team Members
- **Sooraj N S**
- **Susan Peter**
- **Fathima Sherin**
- **Paulson C**

---

## 🚀 Features
- Firebase Authentication (Login/Signup)
- Firestore Database integration
- REST API with Express
- File Uploads and management
- React + TailwindCSS frontend
- Environment variable configuration for security

---

## 📂 Project Structure

.
├── frontend/ # React + Tailwind frontend
│ ├── src/ # React source code
│ ├── public/ # Public assets
│ ├── package.json # Frontend dependencies
│ └── tailwind.config.js # Tailwind config
│
├── routes/ # Express API routes
│ ├── auth.js # Authentication routes
│ ├── products.js # Product-related routes
│ └── upload.js # Upload handling
│
├── middleware/ # Express middleware
├── uploads/ # Uploaded files storage
├── index.js # Backend entry point
├── firestore.rules # Firestore security rules
├── .env # Environment variables
├── env.example # Example env file
├── package.json # Backend dependencies
└── README.md



🛠 Tech Stack

Frontend: React, TailwindCSS

Backend: Node.js, Express

Database & Auth: Firebase (Firestore + Authentication)

Deployment: Vercel/Netlify (Frontend), Render/Heroku (Backend)
