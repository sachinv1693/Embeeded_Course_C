#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#define IP_ADDR   "127.0.0.1"
#define PORT_NUM   3000

int main()
{
		int sock_fd;
		struct sockaddr_in server_addr, client_addr;
		socklen_t len = sizeof(client_addr);

		sock_fd = socket(AF_INET, SOCK_DGRAM, 0);
		if (sock_fd == -1)
		{
				perror("socket");
				return 1;
		}
		server_addr.sin_family = AF_INET;
		server_addr.sin_port = htons(PORT_NUM);
		server_addr.sin_addr.s_addr = inet_addr(IP_ADDR);

		char client_data[20];

		printf("Enter a message to server\n");
		fgets(client_data, 20, stdin);

		int b_ret = sendto(sock_fd, client_data, strlen(client_data) + 1, 0, (struct sockaddr*)&server_addr, sizeof(server_addr));
		if (b_ret == -1)
		{
				perror("sendto");
				return 1;
		}
		printf("Message sent to server\n");
		close(sock_fd);
}

