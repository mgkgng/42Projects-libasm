SRCS = srcs/ft_strlen.s
CSRCS = ./test.c

OBJS_ASM = ${SRCS:.s=.o}
OBJS_C = ${CSRCS:.c=.o}

ASM_FLAGS = -f macho64
CFLAGS = -Wall -Wextra -Werror

LIB_ASM = libasm.a

NAME = libasm

all : ${NAME}

%.o:	%.s
		nasm ${ASM_FLAGS} $< -o $@

%.o:	%.c
		-o $@ -c $< ${CFLAGS}

${LIB_ASM} :	${OBJS_ASM}
				ar rcs ${LIB_ASM} ${OBJS_ASM}

${NAME}:	${LIB_ASM} ${OBJS_C}
			gcc ${CFLAGS} -o ${NAME} ${OBJS_C} ${LIB_ASM}

test_bonus:	${NAME}
			gcc -c main_bonus.c ${NAME} ${TEST_BONUS}

clean:
		rm -rf ${OBJS_ASM} ${OBJS_C}

fclean:	clean
		rm -rf ${NAME} ${LIB_ASM}

re:		fclean make all
