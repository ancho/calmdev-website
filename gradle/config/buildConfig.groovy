environments {
  
  local {
    server {
      host = "localhost"
      port = 8085
      contextPath = "/blog/"
      url  = "http://$host:$port"
    }
  }

  test {
    server {
      host = "zweiblum"
      port = 80
      contextPath = "/blog/"
      url = "http://$host"
    }
  }

}
