SRCS =	srcs/ft_strlen.s 

OBJS = ${SRCS:.s=.o}

COMPILE = nasm -f macho64

LINK = ld

NAME = libasm.a

TEST = program_test

TEST_BONUS = program_test_bonus

CLEAN = rm -rf

all : ${NAME}

%.o:	%.s
		$(NA) $(NA_FLAGS) $<

${NAME} :	${OBJS}
			ar rcs ${NAME} ${OBJS}

test:	${NAME}
		gcc -c main.c ${NAME} ${TEST_NAME}

test_bonus:	${NAME}
			gcc -c main_bonus.c ${NAME} ${TEST_BONUS}

clean:
		${CLEAN} ${OBJS}

fclean:	clean
		${CLEAN} ${NAME}

re:		fclean make all
