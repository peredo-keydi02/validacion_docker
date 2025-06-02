group "default" {
  targets = ["build", "validate-build"]
}

target "build" {
  dockerfile = "Dockerfile"
  context    = "."
  tags       = ["user/app:latest"]
}

target "validate-build" {
  inherits = ["build"]
  call     = "check"
}
