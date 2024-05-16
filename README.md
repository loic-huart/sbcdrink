# SBCdrink

## Prerequisites

- Raspberry Pi 3b+ or more

## Installation

### Step 1: Install OS

Using software like [Raspberry Pi Imager](https://www.raspberrypi.org/software/) to install  install "Ubuntu server 20.04 LTS (64-bit)" on your Raspberry Pi

### Step 2: Install Docker

install docker on your Raspberry Pi by following the instructions on the official website:
https://docs.docker.com/engine/install/ubuntu/

### Step 3: Install Make

install make on your Raspberry Pi by running the following command:

```bash
sudo apt-get install make
```

### Step 4: Install project

Clone the repository on your Raspberry Pi

```bash
git clone https://github.com/loic-huart/sbcdrink.git
```

### Step 5: Start the project

```bash
cd sbcdrink

## Copy the .env.example file to .env and update the values if needed
cp .env.api.example .env.api
cp .env.app.example .env.app

## Start the project
make start
```


