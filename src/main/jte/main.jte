<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Spring Chat</title>
<%--    <link rel="stylesheet" href="/main.css"/>--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="/main.css"/>
</head>
<body>
    <div class="container" id="app">
        <div class="row">
            <div class="col">
                <input id="roomInput" type="number" class="mt-5" placeholder="Room ID"/>

                <a id="roomLink" href="" class="btn btn-success">
                    Connect to room
                </a>
            </div>
        </div>
    </div>
    <script>
        const input = document.getElementById("roomInput");
        const link = document.getElementById("roomLink");

        input.addEventListener("input", () => {
            const roomId = input.value.trim();
            link.href = "/room/room" + roomId;
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>