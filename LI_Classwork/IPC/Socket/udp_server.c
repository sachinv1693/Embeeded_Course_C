#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdio.h>
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
		//server_addr.sin_addr.s_addr = inet_addr(IP_ADDR);//if INADDR_ANY is used then kernel finds the IP address automatically. It is nothing but 0.0.0.0
		server_addr.sin_addr.s_addr = INADDR_ANY;

		int b_ret = bind(sock_fd, (struct sockaddr*)&server_addr, sizeof(server_addr));
		if (b_ret == -1)
		{
				perror("bind");
				return 1;
		}

		printf("Server waiting for client....\n");
		char client_data[20] = {'\0'};
		recvfrom(sock_fd, client_data, 20, 0, (struct sockaddr*)&client_addr, &len);
		printf("Client data reveived!\n %s from %s\n", client_data, inet_ntoa(client_addr.sin_addr));
		printf("Client port = %hd\n", ntohs(client_addr.sin_port));

		close(sock_fd);
}

