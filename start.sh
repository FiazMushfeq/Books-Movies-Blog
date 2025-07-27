#!/bin/bash

# Start MongoDB (macOS Homebrew)
brew services start mongodb-community

# Start backend server
cd backend
npm start &
BACKEND_PID=$!

# Start React frontend
cd ../frontend
npm start &
FRONTEND_PID=$!

# Trap Ctrl+C and kill backend/frontend, plus any process on ports 3000/5050
trap "kill $BACKEND_PID $FRONTEND_PID; kill \$(lsof -ti :3000); kill \$(lsof -ti :5050); exit" SIGINT

wait