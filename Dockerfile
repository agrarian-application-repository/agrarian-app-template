# ------------------------------------------------------------
# AGRARIAN Dockerfile Template
# ------------------------------------------------------------
# Purpose: Provides a language-agnostic starting point
#          for containerized applications within the
#          AGRARIAN ecosystem.
#
# Usage:   Uncomment the relevant language section below
#          (Python, Node.js, Go) or adapt it for your preferred
#          runtime environment.
# ------------------------------------------------------------



# ============================================================
# 🐍 Python Example
# ============================================================
# FROM python:3.11-slim AS build
# WORKDIR /app
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt
# COPY src/ ./src
# CMD ["python", "src/main.py"]

# ============================================================
# 🟢 Node.js Example
# ============================================================
# FROM node:20-slim AS build
# WORKDIR /app
# COPY package*.json ./
# RUN npm ci --only=production
# COPY src/ ./src
# CMD ["node", "src/main.js"]

# ============================================================
# 🐹 Go Example
# ============================================================
# FROM golang:1.22-alpine AS build
# WORKDIR /app
# COPY . .
# RUN go mod download && go build -o app ./src
#
# FROM alpine:3.19
# WORKDIR /app
# COPY --from=build /app/app .
# CMD ["./app"]

# ============================================================
# Default entrypoint (if language not specified)
# ============================================================
