
/*
Title: 	Server1 to perform add operator
Date:	15-03-2020
Author:	B. Pavan Kumar
 */

#include<sys/types.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<arpa/inet.h>
#include<stdio.h>
#include<unistd.h>

#define IP_ADDR "127.0.0.1"
#define PORT_NUM 5000

int main()
{
		int sock_fd;
		struct sockaddr_in server_addr, client_addr;
		socklen_t len = sizeof(client_addr);

		// Create a socket
		sock_fd = socket(AF_INET, SOCK_STREAM, 0);
		if(sock_fd == -1)
		{
				perror("socket");
				return 1;
		}
		server_addr.sin_family = AF_INET;
		server_addr.sin_port = htons(PORT_NUM);
		server_addr.sin_addr.s_addr = inet_addr(IP_ADDR);
		int b_ret = bind(sock_fd, (struct sockaddr *)&server_addr, sizeof(server_addr));
		if(b_ret == -1)
		{
				perror("bind");
				return 1;
		}
		listen(sock_fd, 10);
		while(1)
		{
				// Connect to a client
				int client_fd = accept(sock_fd, (struct sockaddr *)&client_addr, &len);
				int num1, num2, mul;
				recv(client_fd, &num1, sizeof(int), 0);
				recv(client_fd, &num2, sizeof(int), 0);
				printf("client data received %d and %d\n", num1, num2);
				mul = num1 * num2;
				send(client_fd, &mul, sizeof(int), 0);
				close(client_fd);
		}
		close(sock_fd);
		return 0;
}
