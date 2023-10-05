# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jbok <jbok@student.42seoul.kr>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/07 11:20:10 by jbok              #+#    #+#              #
#    Updated: 2023/10/05 10:28:06 by jbok             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ircserv
CXX = c++
CXXFLAGS = -Wall -Werror -Wextra -std=c++98 -pedantic
SRC_DIR = src
SRC = main.cpp
OBJ = ${SRC:.cpp=.o}
OBJ_DIR = obj
INCLUDE = ft_irc.hpp
INCLUDE_DIR = include

all:	${NAME}

${NAME}:	${OBJ_DIR}/${OBJ}
	${CXX} ${CXXFLAGS}  $^ -o $@ 

${OBJ_DIR}/%.o:	${SRC_DIR}/%.cpp
	if [ ! -d ${OBJ_DIR} ]; then \
  		mkdir "${OBJ_DIR}"; \
	fi
	${CXX} -c ${CXXFLAGS} $< -o $@ -I${INCLUDE_DIR}

clean:
	${RM} ${OBJ_DIR}/${OBJ}
	rm -rf ${OBJ_DIR}

fclean:
	${MAKE} clean
	${RM} ${NAME}

re:
	${MAKE} fclean
	${MAKE} all

.PHONY:	all clean fclean re
