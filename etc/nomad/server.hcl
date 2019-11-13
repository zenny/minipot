bind_addr = "0.0.0.0"
plugin_dir = "/usr/local/libexec/nomad/plugins"

advertise {
  # This should be the IP of THIS MACHINE and must be routable by every node
  # in your cluster
  http = "172.20.132.250:4646"
}

server {
  enabled = true
  bootstrap_expect = 1
}

client {
  enabled = true
  options {
    "driver.raw_exec.enable" = "1"
  }
}

consul {
  # The address to the Consul agent.
  address = "172.20.132.250:8500"

  # The service name to register the server and client with Consul.

  client_service_name = "nomad-client"

  # Enables automatically registering the services.
  auto_advertise = true

  # Enabling the server and client to bootstrap using Consul.
  server_auto_join = false
  client_auto_join = true
}

enable_syslog=true
log_level="INFO"
syslog_facility="LOCAL1"

