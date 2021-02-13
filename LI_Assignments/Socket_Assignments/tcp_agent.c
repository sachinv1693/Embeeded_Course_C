#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <unistd.h>

#define IP_ADDR   "127.0.0.1"
#define PORT_NUM   3500

int main()
{
		int sock_fd;
		struct sockaddr_in server_addr, client_addr;
		socklen_t len = sizeof(client_addr);

		//Create a socket
		sock_fd = socket(AF_INET, SOCK_STREAM, 0);
		if (sock_fd == -1)
		{
				perror("socket");
				return 1;
		}
		server_addr.sin_family = AF_INET;
		server_addr.sin_port = htons(PORT_NUM);
		server_addr.sin_addr.s_addr = inet_addr(IP_ADDR);

		int b_ret = bind(sock_fd, (struct sockaddr*)&server_addr, sizeof(server_addr));
		if (b_ret == -1)
		{
				perror("bind");
				return 1;
		}
		listen(sock_fd, 10);

		while (1)
		{
				printf("Agent waiting for client....\n");

				//Connect to client
				int client_fd = accept(sock_fd, (struct sockaddr*)&client_addr, &len);
				char opr;
				int port_num;
				recv(client_fd, &opr, sizeof(char), 0);
				printf("Client data received: %c\n", opr);
				if (opr == '+')
				{
						port_num = 3000;
						if (send(client_fd, &port_num, sizeof(int), MSG_NOSIGNAL) == -1)
						{
								perror("send");
						}
				}
				else if (opr == '-')
				{
						port_num = 4000;
						if (send(client_fd, &port_num, sizeof(int), MSG_NOSIGNAL) == -1)
						{
								perror("send");
						}
				}
				else if (opr == '*')
				{
						port_num = 5000;
						if (send(client_fd, &port_num, sizeof(int), MSG_NOSIGNAL) == -1)
						{
								perror("send");
						}
				}
				else if (opr == '/')
				{
						port_num = 6000;
						if (send(client_fd, &port_num, sizeof(int), MSG_NOSIGNAL) == -1)
						{
								perror("send");
						}
				}
				close(client_fd);
		}
		close(sock_fd);
		return 0;
}

