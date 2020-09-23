
NAME			= 	Program

SRCS			=	main.c

OBJS			= $(SRCS:.c=.o)

FLAGS			= -Wall -Werror -Wextra -g

GCC 			= gcc

all:	$(NAME)

$(NAME):	$(OBJS)
				@echo "\033[0;31m[Remove last version...]"
			@rm -rf Program
				@echo "\033[0;33m[Program compilation...]"
			$(GCC) $(OBJS) -o $(NAME)
				@echo "\033[1;32m[* * * * * * * * * * * * * * * * * * * * * * *]"
				@echo "\033[1;32m[ C O M P I L E D  	S U C C E S F U L L Y]"
				@echo "\033[1;32m[* * * * * * * * * * * * * * * * * * * * * * *]"

%.o: %.c
	$(GCC) $(FLAGS) $(INCLUDE) -c $<  -o $(<:.c=.o)

fclean: clean
	rm -f $(NAME)

clean :
		@echo "\033[0;31m[Deleting Objects...]"
	$(RM) -rf $(OBJS) *.o *gch *.out *.dSYM

re:				fclean $(NAME)
