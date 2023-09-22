NAME = libft.a
SRCS	=	ft_isalpha.c		\
			ft_isdigit.c		\
			ft_isalnum.c		\
			ft_isascii.c		\
			ft_isprint.c		\
			ft_strlen.c			\
			ft_memset.c			\
			ft_bzero.c			\
			ft_calloc.c 		\
			ft_memcpy.c			\
			ft_memmove.c	 	\
			ft_strlcat.c 		\
			ft_toupper.c 		\
			ft_tolower.c 		\
			ft_strchr.c 		\
			ft_strrchr.c 		\
			ft_strdup.c			\
			ft_strncmp.c 		\
			ft_substr.c			\
			ft_strjoin.c		\
			ft_memchr.c 		\
			ft_memcmp.c 		\
			ft_strnstr.c 		\
			ft_atoi.c 			\
			ft_split.c 			\
			ft_itoa.c			\
			ft_strmapi.c		\
			ft_striteri.c		\
			ft_putchar_fd.c		\
			ft_putstr_fd.c		\
			ft_putendl_fd.c		\
			ft_putnbr_fd.c		\
			ft_strlcpy.c 		\
			ft_strtrim.c		\

B_SRC	=	ft_lstnew.c			\
			ft_lstadd_front.c	\
			ft_lstsize.c		\
			ft_lstlast.c		\
			ft_lstadd_back.c	\
			ft_lstdelone.c		\
			ft_lstclear.c		\
			ft_lstiter.c		\
			ft_lstmap.c			\

INCLUDE_DIR = include
SRCDIR = ./srcs/
OBJDIR = ./obj/

OBJS = $(SRCS:%.c=$(OBJDIR)%.o)

CC = cc

CFLAGS = -Wall -Wextra -Werror -I $(INCLUDE_DIR)

ifdef WITH_BONUS
OBJS += $(B_OBJS)
endif

all: $(OBJDIR) $(NAME)

$(NAME): $(OBJDIR) $(OBJS)
	ar rcs $(NAME) $(OBJS)

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(OBJDIR)%.o: $(SRCDIR)%.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -rf $(OBJDIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re