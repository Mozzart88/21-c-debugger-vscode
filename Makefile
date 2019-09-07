# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mozzart <mozzart@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/03 15:26:56 by tvanessa          #+#    #+#              #
#    Updated: 2019/09/08 00:43:14 by mozzart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

c:
	gcc -Wall -Wextra -Werror $(e)/*.c

nf:
	norminette -R CheckForbiddenSourceHeader $(e)

n:
	norminette $(e)