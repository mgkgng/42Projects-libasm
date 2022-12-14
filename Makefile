SRCS = srcs/ft_strlen.s srcs/ft_strcpy.s
CSRCS = main.c

OBJS_ASM = ${SRCS:.s=.o}
OBJS_C = ${CSRCS:.c=.o}

ASM_FLAGS = -f macho64
CFLAGS = -Wall -Wextra -Werror

LIB_ASM = libasm.a

NAME = libasm

INCLUDES = -I ./includes

all : ${NAME}

%.o:	%.s
		nasm ${ASM_FLAGS} $< -o $@

%.o:	%.c
		gcc -o $@ -c ${INCLUDES} $< ${CFLAGS}

${LIB_ASM} :	${OBJS_ASM}
				ar rcs ${LIB_ASM} ${OBJS_ASM}

${NAME}:	${LIB_ASM} ${OBJS_C}
			gcc ${CFLAGS} ${INCLUDES} -o ${NAME} ${OBJS_C} ${LIB_ASM}

clean:
		rm -rf ${OBJS_ASM} ${OBJS_C}

fclean:	clean
		rm -rf ${NAME} ${LIB_ASM}

re:		fclean make all
