# DOS-CLIENT-SERVER

Simple Go RPC chat example (server + client).

Prerequisites
- Go installed and available on PATH (https://go.dev/dl/).

Quick test (PowerShell)

1. Open two PowerShell windows.
2. In the first window start the server:

```powershell
cd C:\Users\Msi\Desktop\task\server
go run .
```

3. In the second window start the client:

```powershell
cd C:\Users\Msi\Desktop\task\client
go run .
```

You can also use the helper scripts `run-server.ps1` and `run-client.ps1` from the project root.

Notes
- Server listens on TCP port 1234. Ensure the port isn't blocked by a firewall if communicating across machines.
- If `go` is not recognized, install Go and restart your terminal so PATH updates take effect.
