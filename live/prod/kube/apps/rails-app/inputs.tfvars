release_spec = {
  enabled        = true
  release_name   = "rails-app"
  release_values = "values.yaml"

  chart_repo    = "private"
  chart_name    = "rails-app"
  chart_version = "1.0.0"

  domain_name = "react.swarm.pw"
}

pre_hook = {
  command = <<-EOF
            cd /exekube/charts/rails-app/ \
            && bash push.sh \
            && helm repo update
            EOF
}
