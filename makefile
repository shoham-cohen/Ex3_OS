CC=gcc

all: server fork client
	
fork: fork_server.c
	$(CC) $^ -o fork

client: client.c
	$(CC) $^ -o client

server: new_server.c
	$(CC) $^ -o new_server -lpthread

clean:
	rm -f *.o fork new_server client