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
      contextPath = "/blog/"
      url = "https://$host"
    }
    ssh {
      host = "zweiblum"
      user = "frank"
      destination = "/var/www/blog"
    }
  }

  prod {
    server {
      host = "www.calmdevelopment.de"
      contextPath = "/blog/"
      url = "https://$host"
    }
    ssh {
      host = "menkar.uberspace.de"
      user = "t0ken"
      destination = "/home/t0ken/html/blog"
    }
  }
}
