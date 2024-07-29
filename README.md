# PHP Chatbot

This repository contains a simple PHP chatbot script that uses a percentage-based scoring system to determine the best response based on user input. The chatbot compares the user's message with stored questions in a MySQL database and provides the most relevant response.

## Features

- **Similarity Matching**: Uses a percentage-based similarity score to find the closest matching response.
- **Database Integration**: Connects to a MySQL database to retrieve and match questions and answers.
- **Dynamic Responses**: Handles a variety of user inputs and provides appropriate responses.

## Prerequisites

- PHP 7.4 or higher
- MySQL or MariaDB
- A web server (e.g., Apache or Nginx)

## Installation

1. **Clone the Repository**

   ```sh
   git clone https://github.com/uvindu94/chatbot.git
   cd chatbot
