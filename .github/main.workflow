workflow "Update gist with latest tweet" {
  resolves = ["update-gist"]
  on = "schedule(*/10 * * * *)"
}

action "update-gist" {
  uses = "matchai/bird-box@master"
  env = {
    "TWITTER_USER" = "kissu_io"
    "GIST_ID" = "19786fd509d0fa89dc9455a8899db350"
  }
  secrets = [
    "GH_TOKEN",
    "TWITTER_CONSUMER_KEY",
    "TWITTER_CONSUMER_SECRET",
    "TWITTER_ACCESS_TOKEN_KEY",
    "TWITTER_ACCESS_TOKEN_SECRET",
  ]
}
