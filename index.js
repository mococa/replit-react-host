const express = require("express");
const app = express();
app.use(express.static("build"));
app.engine("html", require("ejs").renderFile);
app.set("view engine", "html");

const PORT = 3000;

app.get("*", (req, res) => {
  res.sendFile("build/index.html", { root: __dirname });
});

app.listen(PORT, function () {
  console.log(`App up and running on port ${PORT}.`);
});

console.log();
