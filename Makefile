# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pivanovi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/09 10:02:49 by pivanovi          #+#    #+#              #
#    Updated: 2016/11/09 10:02:50 by pivanovi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wall -Wextra -Werror

SRC_C =		Colleen_src/Colleen.c
SRC_G =		Grace_src/Grace.c
SRC_S =		Sully_src/Sully.c

OBJ_C = $(SRC_C:.c=.o)
OBJ_G = $(SRC_G:.c=.o)
OBJ_S = $(SRC_S:.c=.o)

CFLAGS += -I./includes

all: Colleen Grace Sully

Colleen: $(OBJ_C)
	$(CC) $(CFLAGS) $(OBJ_C) -o $@

Grace: $(OBJ_G)
	$(CC) $(CFLAGS) $(OBJ_G) -o $@

Sully: $(OBJ_S)
	$(CC) $(CFLAGS) $(OBJ_S) -o $@

clean:
	/bin/rm -f $(OBJ_C) $(OBJ_G) $(OBJ_S)

fclean: clean
	/bin/rm -f Colleen Grace Sully

re: fclean all
