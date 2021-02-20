NAME 	= libasm.a

SRCS 	= ft_strlen.s \
	  ft_strcpy.s \
	  ft_strcmp.s \
	  ft_strdup.s \
	  ft_write.s \
	  ft_read.s \


OBJS 	= $(SRCS:.s=.o)

NASM 	= nasm
FLAG 	= -f
FORMAT 	= -macho64

%.o: 	%.s
	$(NASM) $(FLAG) elf64 $< -o $@

all:
	$(MAKE) $(NAME) -j4

$(NAME):	$(OBJS)
	ar rcs $(NAME) $(OBJS)

clean: 
	rm -rf $(OBJS)

fclean: 	clean
	rm -rf $(NAME)

re:		fclean all
