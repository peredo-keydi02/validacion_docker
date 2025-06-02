group "default" {
  targets = ["build", "validate-build"]
}

target "build" {
  dockerfile = "Dockerfile"
  context    = "."
  tags       = ["keydi02/validacion_docker:latest"] 
}

target "validate-build" {
  inherits = ["build"]
  call     = "check"
}
