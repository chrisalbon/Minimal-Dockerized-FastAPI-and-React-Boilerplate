# Stage 1: Build the React frontend
FROM node:20 AS frontend-build
WORKDIR /frontend
COPY frontend/package*.json ./
RUN npm install
COPY frontend/ ./
RUN npm run build

# Stage 2: Build the final image
FROM python:3.12-slim

# Install Node.js and necessary tools
RUN apt-get update && apt-get install -y nodejs npm

# Set up backend
WORKDIR /backend
COPY backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy backend code
COPY backend/ .

# Copy built frontend from previous stage
COPY --from=frontend-build /frontend/dist /frontend/dist

# Expose the port the app runs on
EXPOSE 8000

# Start the application using uvicorn
CMD ["python", "-m", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
