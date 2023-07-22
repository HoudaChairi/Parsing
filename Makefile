NAME= minishell
CC= cc
FLAGS= -Wall -Wextra -Werror -fsanitize=address -g
SRC= minishell.c utils.c depart.c change_type.c env.c expand.c link.c \
	syntaxe_err.c division.c suite_div.c ft_free.c s_expand.c redirect.c \
	final_list.c signals.c herdoc.c parsing.c

HEADERS_DIRECTORY = ./
HEADERS_LIST = minishell.h
HEADERS = $(addprefix $(HEADERS_DIRECTORY), $(HEADERS_LIST))

INCLUDES = -I$(HEADERS_DIRECTORY) -I/Users/$(USER)/.brew/opt/readline/include

OBJ = $(SRC:.c=.o)

all : lib $(NAME)

$(NAME) : $(OBJ)
	$(CC) $(INCLUDES) $(FLAGS) $(OBJ) ./libft/libft.a -o $@ -lreadline -L/Users/$(USER)/.brew/opt/readline/lib

%.o : %.c $(HEADERS)
	$(CC) $(FLAGS) -c $(INCLUDES) $< -o $@ 

lib : 
	make -C libft

clean :
	make clean -C libft
	rm -f $(OBJ)

fclean : clean
	make fclean -C libft
	rm -f $(NAME)

re : fclean all

.phony : all clean fclean re 
# -L/Users/hchairi/.brew/opt/readline/lib
# -I/Users/hchairi/.brew/opt/readline/include