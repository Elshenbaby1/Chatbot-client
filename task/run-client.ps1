#!/usr/bin/env pwsh
<#
Helper script to run the client. Run from project root: .\run-client.ps1
#>
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location -Path (Join-Path $scriptDir 'client')

if (-not (Get-Command go -ErrorAction SilentlyContinue)) {
    Write-Error "Go executable not found. Install Go and ensure 'go' is on PATH."
    exit 1
}

Write-Host "Starting client (go run .) in: " (Get-Location)
go run .
