# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mozzart <mozzart@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/03 15:26:56 by tvanessa          #+#    #+#              #
#    Updated: 2019/09/07 17:43:58 by mozzart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

c:
	gcc -Wall -Wextra -Werror *.c

g:
	gcc -g -Wall -Wextra -Werror ${FOLDER}/*.c

nf:
	norminette -R CheckForbiddenSourceHeader $(e)

n:
	norminette $(e)