# 🚀 Node.js + MongoDB Docker Application

A beginner-friendly web application built using **Node.js, Express.js, MongoDB, and Docker**. This project allows users to sign up by submitting their email, username, and password through a simple HTML form. The submitted data is stored in MongoDB.

## ✨ Features

- 🏠 **Home Page** – A simple and clean HTML signup form.
- 👤 **User Registration** – Collects email, username, and password.
- 💾 **MongoDB Integration** – Stores user information in a MongoDB database.
- 📋 **Fetch Users** – Retrieves all registered users through an API endpoint.
- 🐳 **Docker Support** – Runs MongoDB and Mongo Express using Docker.
- ⚡ **Express.js Server** – Handles HTTP requests and application routes.

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| 🟢 Node.js | Runs JavaScript on the server |
| 🚂 Express.js | Handles routes and HTTP requests |
| 🍃 MongoDB | Stores user data |
| 🐳 Docker | Runs applications in containers |
| 🖥️ Mongo Express | Web-based MongoDB administration interface |
| 🌐 HTML & CSS | Creates the signup form |

## 📁 Project Structure

```text
nodeapp/
│
├── Dockerfile          # Instructions to build the Node.js image
├── docker-compose.yml  # Configuration for MongoDB services
├── index.html          # Signup form
├── server.js           # Express server and API routes
├── package.json        # Project metadata and dependencies
├── package-lock.json   # Dependency lock file
└── .gitignore          # Files Git should ignore
```

## ⚙️ Prerequisites

Make sure you have installed:

- [Node.js](https://nodejs.org/)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Git](https://git-scm.com/)

## 🚀 Getting Started

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/nodeapp-docker.git
```

Move into the project directory:

```bash
cd nodeapp-docker
```

> Replace `YOUR_USERNAME` and `nodeapp-docker` with your actual GitHub username and repository name.

### 2️⃣ Install Dependencies

```bash
npm install
```

### 3️⃣ Start MongoDB with Docker Compose

Run the following command from the directory containing your Docker Compose file:

```bash
docker compose up -d
```

This starts the MongoDB and Mongo Express containers in the background.

Check running containers:

```bash
docker ps
```

### 4️⃣ Start the Node.js Application

```bash
npm start
```

Expected output:

```text
server running on port 3030
```

Open the application in your browser:

**http://localhost:3030**

## 🌐 API Endpoints

### 🏠 1. Home Page

```http
GET /
```

Displays the signup form in the browser.

### 👥 2. Get All Users

```http
GET /getUsers
```

Fetches all user documents from the `users` collection in the `my-sample-db` database.

Example URL:

http://localhost:3030/getUsers

### ➕ 3. Add a New User

```http
POST /addUser
```

Accepts form data and inserts a new user document into MongoDB.

**Example request body:**

```text
email: taslimkhan00@gmail.com
username: Taslim khan
password: Password00
```

The endpoint returns a success message after insertion.

## 🐳 Docker Commands

| Command | Description |
|---|---|
| `docker ps` | Shows running containers |
| `docker ps -a` | Shows all containers |
| `docker images` | Lists downloaded and built images |
| `docker compose up -d` | Starts services in the background |
| `docker compose logs` | Displays service logs |
| `docker compose down` | Stops and removes Compose containers and networks |
| `docker build -t nodeapp:1.0 .` | Builds the Node.js Docker image |

## 🧠 How It Works

1. 👤 A user opens the website and fills in the signup form.
2. 📩 The browser sends the form data to the Express server using a `POST` request.
3. ⚙️ Express.js reads the submitted form data.
4. 🍃 The MongoDB driver connects to the database.
5. 💾 The user data is inserted into the `users` collection.
6. ✅ The server returns a success response.

## 🔐 Security Notes

- 🔑 Never upload real database passwords, API keys, or `.env` files to GitHub.
- 🔒 Use environment variables for database credentials.
- 🔐 **Passwords must be hashed** using a suitable library such as `bcrypt` before storing them in a real application.
- 🛡️ Add input validation, error handling, and proper authentication before deploying this project publicly.
- ⚠️ The current example uses a simple signup form for learning purposes and is not production-ready.

## 🎯 Learning Outcomes

By building this project, you can learn:

- How to create a basic Node.js and Express.js application.
- How to connect Node.js with MongoDB.
- How to create GET and POST routes.
- How to run MongoDB using Docker.
- How to use Docker Compose to manage multiple containers.
- How to build and run a Docker image.

## 👨‍💻 Author

**Taslim Khan**

🎓 B.Tech Computer Science & Engineering Student

💻 Interested in Full-Stack Development, Docker, and Backend Development.

## ⭐ Support

If you find this project helpful, consider giving it a ⭐ on GitHub!

---

**Happy Coding! 💻🚀**
