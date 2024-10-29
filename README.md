# Learning Management System

A comprehensive Learning Management System (LMS) built with Ruby on Rails, designed to streamline course management, user tracking, and educational content delivery.

## Table of Contents
1. [Features](#features)
2. [Getting Started](#getting-started)
3. [Installation](#installation)
4. [Usage](#usage)

## Features
* **Course Management**: Add, update, and delete courses.
* **User Enrollment**: Enroll or remove Users from courses.
* **User Authentication**: Role-based access control for admin, teachers, and students.
* **Analytics**: Dashboard with progress tracking and reports.

## Getting Started
To run this LMS on your local machine, follow the installation instructions below.

### Prerequisites
* Ruby latest
* Rails latest
* Database setup SQLite

## Installation
1. Clone this repository:
```bash
git clone https://github.com/sher2001/learning_management.git
cd learning_management
```

2. Install the dependencies:
```bash
bundle install
```

3. Set up the database:
```bash
rails db:create
rails db:migrate
```

4. Start the Rails server:
```bash
rails server
```

5. Access the application in your browser at `http://localhost:3000`.

## Usage
Once the server is running, you can:
* **Admin**: Create and manage courses and users.
* **Users**: Can access courses