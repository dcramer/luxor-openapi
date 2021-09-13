const express = require("express");
const pathToSwaggerUi = require("swagger-ui-dist").absolutePath();

const app = express();

app.get("/openapi.yaml", function (req, res) {
  res.sendFile("openapi.yaml", { root: __dirname });
});

app.use(express.static(pathToSwaggerUi));

app.listen(3000);
