<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Simple Chatbot</title>
    <style>
        #chatbox {
            width: 500px;
            height: 300px;
            border: 1px solid #ccc;
            padding: 10px;
            overflow-y: scroll;
        }
        #userInput {
            width: 500px;
        }
        #sendBtn {
            padding: 5px 10px;
        }
    </style>
</head>
<body>
    <div id="chatbox">
        <div id="messages"></div>
    </div>
    <input type="text" id="userInput" placeholder="Type a message...">
    <button id="sendBtn">Send</button>

    <script>
        document.getElementById('sendBtn').addEventListener('click', function() {
            let userInput = document.getElementById('userInput').value;

            let xhr = new XMLHttpRequest();
            xhr.open('POST', 'chatbot.php', true);
            xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
            xhr.onload = function () {
                if (xhr.status === 200) {
                    let response = xhr.responseText;

                    let messages = document.getElementById('messages');
                    messages.innerHTML += '<p><strong>You:</strong> ' + userInput + '</p>';
                    messages.innerHTML += '<p><strong>Bot:</strong> ' + response + '</p>';

                    document.getElementById('chatbox').scrollTop = document.getElementById('chatbox').scrollHeight;
                    document.getElementById('userInput').value = '';
                }
            };
            xhr.send('message=' + encodeURIComponent(userInput));
        });
    </script>
</body>
</html>
