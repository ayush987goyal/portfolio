workflow "New workflow" {
  on = "push"
  resolves = ["Deploy"]
}

action "Install Dependencies" {
  uses = "actions/npm@c555744"
  runs = "npm install"
}

action "Build Project" {
  uses = "actions/npm@c555744"
  runs = "npm run build"
  secrets = ["VUE_APP_SENDMAIL_API"]
  needs = ["Install Dependencies"]
}

action "Deploy" {
  uses = "actions/npm@c555744"
  needs = ["Build Project"]
  runs = "NODE_DEBUG=gh-pages npm run deploy"
}
