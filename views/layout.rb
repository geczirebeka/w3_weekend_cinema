<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Films</h1>
    <ul>
        <% for singular in @films %>
        <li><%= singular.title %></li>
        <% end %>
    </ul>
    <%= yield %>
</body>
</html>