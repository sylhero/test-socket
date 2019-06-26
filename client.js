const
    io = require("socket.io-client"),
    ioClient = io.connect("https://dev.spiderkube.io", {
    	path: "/test/socket.io/"
    }); //http://localhost:8000

ioClient.on("seq-num", (msg) => console.info(msg));


