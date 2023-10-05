#include <arpa/inet.h>
#include <fcntl.h>
#include <netdb.h>
#include <netinet/in.h>
#include <poll.h>
#include <signal.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <iostream>

#include "ft_irc.hpp"

int main(int argc, char** argv) {
  if (argc != 3) throw std::runtime_error("Usage: ./ircserv <port> <password>");

  int port = std::atoi(argv[1]);
  std::string password = argv[2];

  std::cout << "Starting server on port " << port << " with password "
            << password << std::endl;
  return 0;
}
