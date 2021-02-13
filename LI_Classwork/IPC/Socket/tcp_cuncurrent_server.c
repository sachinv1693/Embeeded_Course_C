#include <sys/types.h>
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
		int sock_fd;
		int client_count;
		struct sockaddr_in server_addr, client_addr;
		socklen_t len = sizeof(client_addr);

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
		printf("Server waiting for client....\n");

		while (1)
		{
				int client_fd = accept(sock_fd, (struct sockaddr*)&client_addr, &len);
				printf("Client %d is connected\n", ++client_count);
				int child = fork();
				if (child == 0)
				{
						char client_data[20] = {'\0'};
						recv(client_fd, client_data, 20, 0);
						printf("Client data reveived!\n%s", client_data);
						close(client_fd);
						exit(0);	
				}
		}
		close(sock_fd);
}

