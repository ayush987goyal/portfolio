workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for npm"]
}

action "GitHub Action for npm" {
  uses = "actions/npm@c555744"
  secrets = ["VUE_APP_SENDMAIL_API"]
  runs = "npm run build"
}
