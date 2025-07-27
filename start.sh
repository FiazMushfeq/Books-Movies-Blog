#!/bin/bash

# Start MongoDB (macOS Homebrew)
brew services start mongodb-community

# Start backend server
cd backend
npm start &

# Start React frontend
cd ../frontend
npm start &