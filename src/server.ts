import express from "express"

const app = express()

const PORT = process.env.PORT || 3000

app.get('/health-check', (_, res) => res.sendStatus(200))

app.listen(PORT)