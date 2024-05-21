import express from "express";
const app = express()

app.get("/", (req, res) => {
    res.json({
        message: "Hi there !!",
        version: `Node environment ${process.env.NODE_ENV}`
    })
})
app.get("/ping", (req, res) => {
    res.json({message: "pong......hhh"})
})

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server running on PORT ${PORT}`)
})