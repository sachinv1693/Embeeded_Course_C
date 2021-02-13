#include <sys/types.h>
#include <sys/time.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define IP_ADDR   "127.0.0.1"
#define PORT_NUM   3000

int main()
{
		fd_set rfds;
		FD_ZERO(&rfds);
		int sock_fd, fd_count = 0;
		struct sockaddr_in server_addr, client_addr;
		socklen_t len = sizeof(client_addr);

		sock_fd = socket(AF_INET, SOCK_STREAM, 0);
		if (sock_fd == -1)
		{
				perror("socket");
				return 1;
		}
		FD_SET(sock_fd, &rfds);
		fd_count = sock_fd + 1;
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
		int new_fd;
		while (1)
		{
				select(fd_count, &rfds, NULL, NULL, NULL);
				if (FD_ISSET(sock_fd, &rfds))
				{
						new_fd = accept(sock_fd, (struct sockaddr*)&client_addr, &len);
						FD_SET(new_fd, &rfds);
						fd_count = sock_fd + 1;
				}
				else
				{
						for (int i = sock_fd + 1; i < sock_fd + fd_count; i++)
						{
								if (FD_ISSET(i, &rfds))
								{
										char client_data[20] = {'\0'};
										recv(new_fd, client_data, 20, 0);
										printf("Client data reveived!\n %s", client_data);
										close(new_fd);
										close(sock_fd);
								}
						}
				}
		}
}

