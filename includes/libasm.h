#pragma once

#include <unistd.h>
#include <stdio.h>

#define DELAY 750000

typedef struct s_list {
	void			*data;
	struct s_list	*next;
} t_list;