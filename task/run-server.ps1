#!/usr/bin/env pwsh
<#
Helper script to run the server. Run from project root: .\run-server.ps1
#>
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location -Path (Join-Path $scriptDir 'server')

if (-not (Get-Command go -ErrorAction SilentlyContinue)) {
    Write-Error "Go executable not found. Install Go and ensure 'go' is on PATH."
    exit 1
}

Write-Host "Starting server (go run .) in: " (Get-Location)
go run .
