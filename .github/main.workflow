workflow "New workflow" {
  on = "push"
  resolves = ["Build Project"]
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
