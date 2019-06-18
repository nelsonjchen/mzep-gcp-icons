workflow "New workflow" {
  on = "schedule(*/5 * * * *)"
  resolves = ["Hello World"]
}

action "Hello World" {
  uses = "nelsonjchen/mirror-zip-extract-push-action@master"
  args = "https://cloud.google.com/icons/files/gcp-icons.zip"
  secrets = ["GITHUB_TOKEN"]
}
