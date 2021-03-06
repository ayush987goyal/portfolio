workflow "Build & Deploy" {
  on = "push"
  resolves = ["Deploy"]
}

action "Install Dependencies" {
  uses = "actions/npm@c555744"
  runs = "npm install"
}

action "Build Project" {
  uses = "actions/npm@c555744"
  runs = "npm run generate"
  secrets = ["VUE_APP_SENDMAIL_API"]
  needs = ["Install Dependencies"]
}

action "Deploy" {
  uses = "ayush987goyal/github-action-gh-pages@master"
  needs = ["Build Project"]
  secrets = ["GITHUB_TOKEN"]
  env = {
    PUBLIC_PATH = "dist"
  }
}
