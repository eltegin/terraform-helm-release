module mypythonapp {
  source    = "../terraform/"
  name      = "python"
  namespace = "python-namespace"
  chart     = "../myapp"
    values = [<<EOF
  replicaCount: 1

image:
  repository: nginx
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "latest"
  EOF
  ]
}

module mygoapp {
  source    = "../terraform/"
  name      = "go"
  namespace = "go-namespace"
  chart     = "../myapp"

    values = [<<EOF
  replicaCount: 2

image:
  repository: wordpress
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "latest"
  EOF
  ]
}