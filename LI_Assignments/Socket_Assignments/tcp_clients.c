#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <stdio_ext.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include <unistd.h>

#define IP_ADDR   "127.0.0.1"
#define PORT_NUM   3500

int decode_exp(char* exp, int* num1, int* num2, char* opr)
{
		char* num1_str = NULL, *num2_str = NULL, opr_found = 0;
		while (*exp)
		{
				if (!isspace(*exp) && !num1_str)
				{   
						num1_str = exp;
				}   
				else if (isspace(*(exp - 1)) && !isspace(*exp) && isspace(*(exp + 1)))
				{
						opr_found++;
						*opr = *exp;
						if (*opr != '+' && *opr != '-' && *opr != '*' && *opr != '/')                                return -1;
				}                   
				else if (!isspace(*exp) && !num2_str && opr_found)
				{   
						num2_str = exp;
				}           
				exp++;
		}
		if (opr_found != 1 || !num1_str || !num2_str)
		{
				return -1;
		}           
		*num1 = atoi(num1_str);
		*num2 = atoi(num2_str);
		return 0; 
}

int main()
{
		int sock_agent_fd, sock_server_fd;
		struct sockaddr_in server_addr, client_addr, agent_addr;
		socklen_t len = sizeof(client_addr);

		//Create a socket
		sock_agent_fd = socket(AF_INET, SOCK_STREAM, 0);
		if (sock_agent_fd == -1)
		{
				perror("socket");
				return 1;
		}
		printf("Agent socket fd: %d\n", sock_agent_fd);

		agent_addr.sin_family = AF_INET;
		agent_addr.sin_port = htons(PORT_NUM);
		agent_addr.sin_addr.s_addr = inet_addr(IP_ADDR);

		int b_ret = connect(sock_agent_fd, (struct sockaddr*)&agent_addr, sizeof(agent_addr));
		if (b_ret == -1)
		{
				perror("connect");
				return 1;
		}
		char exp[60] = {'\0'}, opr = 0;
		int num1, num2, port_num, result;
		printf("Enter the expression(eg: 34 + 67): ");
		scanf("%[^\n]", exp);
		__fpurge(stdin);

		if (decode_exp(exp, &num1, &num2, &opr) != -1) 
		{
				printf("Parsing user expression..\nNum1 = %d\
								\nOperator = %c\
								\nNum2 = %d\n", num1, opr, num2);
		}   
		else
		{
				printf("Invalid operation requested!\n");
				return 1;
		}

		send(sock_agent_fd, &opr, sizeof(char), 0);
		printf("Message sent to agent\n");
		recv(sock_agent_fd, &port_num, sizeof(int), 0);
		if (port_num == 0)
		{
				printf("Server not found\n");
				return 0;
		}
		//Create a new socket
		sock_server_fd = socket(AF_INET, SOCK_STREAM, 0);
		if (sock_server_fd == -1)
		{
				perror("socket");
				return 1;
		}
		printf("Agent socket fd: %d\n", sock_agent_fd);
		//Assign server address and port number
		server_addr.sin_family = AF_INET;
		server_addr.sin_port = htons(port_num);
		server_addr.sin_addr.s_addr = inet_addr(IP_ADDR);

		//Connect to server and send the numbers
		b_ret = connect(sock_server_fd, (struct sockaddr*)&server_addr, sizeof(server_addr));
		if (b_ret == -1)
		{
				perror("connect");
				return 1;
		}
		send(sock_server_fd, &num1, sizeof(int), 0);
		send(sock_server_fd, &num2, sizeof(int), 0);
		recv(sock_server_fd, &result, sizeof(int), 0);
		printf("Result = %d\n\n", result);

		close(sock_server_fd);
		close(sock_agent_fd);
}

