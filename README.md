Go RPC Chat Server & Client

A simple multi-client chat application built using Go’s native RPC (Remote Procedure Call) library.
This project demonstrates concurrent client handling, thread-safe message storage, and real-time chat synchronization — all in under a few hundred lines of Go code.

🎥 Demo Video: 
https://drive.google.com/drive/folders/1Y-AS9-6lKEDeZGgzYDELHn_viwdXpewF


🚀 Features

🧑‍🤝‍🧑 Multi-client support – Handle multiple clients concurrently using goroutines

🔒 Thread-safe messaging – Prevent race conditions with mutex locks

🔁 Real-time chat history – Every new message updates all clients instantly

⚙️ Simple RPC architecture – Clean and lightweight use of Go’s net/rpc package

💻 Cross-platform – Works seamlessly on Windows, Linux, and macOS

📋 Prerequisites

Go 1.16+ installed → Download Go

Basic understanding of TCP networking

🛠️ Installation
# Clone the repository
git clone https://github.com/<yourusername>/go-rpc-chat.git
cd go-rpc-chat

# Initialize Go module
go mod init task

🏃 Running the Application
🪟 On Windows (PowerShell)

Start the Server

cd server
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
go run server.go


Start the Client (new terminal)

cd client
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
go run client.go


Or simply double-click:

start-server.bat → runs the server

start-client.bat → runs the client

🐧 On Linux / macOS
cd server
go run server.go

cd client
go run client.go

💬 How to Use

Start the server first (default port: 1234)

Launch one or more clients

Enter your name when prompted

Start chatting! Type a message and press Enter

Type exit to quit the client

🏗️ Architecture Overview
🖥️ Server (server.go)

Defines ChatServer with RPC method SendMessage

Maintains chat history in a thread-safe slice

Accepts concurrent connections on TCP port 1234

Spawns a goroutine per client

💻 Client (client.go)

Connects to the server over TCP

Sends messages via RPC calls

Displays the updated chat history after each message

📡 RPC Communication

Message (sent to server):

type Message struct {
    Sender  string
    Content string
}


Reply (received from server):

type Reply struct {
    History []string
}

🔒 Thread Safety Example
type ChatServer struct {
    Messages []string
    mu       sync.Mutex
}


Every update to Messages is wrapped with a mutex lock to prevent race conditions when multiple clients send messages simultaneously.

📂 Project Structure
go-rpc-chat/
├── server/
│   └── server.go          # RPC server implementation
├── client/
│   └── client.go          # RPC client implementation
├── go.mod                 # Go module definition
├── start-server.bat       # Windows script for server
├── start-client.bat       # Windows script for client
├── run-server.ps1         # PowerShell script for server
├── run-client.ps1         # PowerShell script for client
└── README.md              # This file

🧪 Testing Multi-Client Chat

Start the server in one terminal

Open 2–3 new terminals

Run the client in each with different names

Type messages in any client — all others receive them in real time

🐛 Troubleshooting
Issue	Solution
go: command not found	Install Go and ensure it’s added to your PATH
Dialing error	Make sure the server is running before launching clients
Address already in use	Stop any other process using port 1234 or change the port in both files
📝 License

This project is open-source under the MIT License.
Feel free to use, modify, and distribute it as you wish.

🤝 Contributing

Contributions, feature requests, and issues are welcome!

Fork the repo

Create your feature branch (git checkout -b feature/AmazingFeature)

Commit your changes

Push to the branch

Open a Pull Request 🎉
