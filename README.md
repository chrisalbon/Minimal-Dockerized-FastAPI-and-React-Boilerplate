# Minimal Dockerized FastAPI and React Boilerplate

The purpose of this repository is to have simple, working code to start a web app with a FastAPI backend and a React frontend, all containerized with Docker for easy setup and deployment. The motivation behind this repository was to have some simple code that I could use to set up a demo or public proof of concept fast and then expand on it.

This is not to be used for a production site:

- The frontend and the backend share a Docker container
- It doesn't have reverse proxies
- It doesn't have authentication
- It doesn't have authorization
- It doesn't have any kind of database
- It doesn't have HTTPS
- It doesn't have logging
- It doesn't have testing
- It doesn't have CI/CD

BUT it works out of the box.

## Getting Started

These instructions will help you set up and run the project using Docker Compose.

### Prerequisites

- Docker
- Docker Compose

### Running the Application

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
   ```

2. Launch the application using Docker Compose:
   ```
   docker-compose up --build
   ```

3. Access the application at `http://localhost:8000` (or the appropriate port).

To stop the application, press `Ctrl+C` in the terminal where Docker Compose is running.
