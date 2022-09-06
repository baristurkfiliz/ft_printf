CC=gcc
CFLAGS= -Wall -Wextra -Werror

SRC=src/

LIBFT=$(SRC)libft
PRINTF=$(SRC)printf

SRC_FOLDERS=$(LIBFT) $(PRINTF)

LIBFTH=$(LIBFT)/libft.h
PRINTFH=$(PRINTF)/printf.h

HEADERS=$(PRINTFH) $(LIBFTH)

SRCS=$(wildcard $(LIBFT)/*.c) $(wildcard $(PRINTF)/*.c)

OBJ=obj/
OBJS=$(patsubst $(SRC)%.c, $(OBJ)%.o, $(SRCS))
#OBJ_PRE=$(addprefix $(OBJ), $(OBJS))

OUTPUT = printf.a

$(OUTPUT): $(OBJS)
	@ar rcs $(OUTPUT) $(OBJS)
	@echo "Printf Done !"

$(OBJS) : $(SRCS) 
	@mkdir -p obj
	@mkdir -p obj/libft
	@mkdir -p obj/printf
	@echo "Compiling: $<"
	$(CC) $(CCFLAGS) -c $< -o $@ 
lib: $(OUTPUT)

all: lib


clean:
	$(RM) -r $(OBJ)

print:
	@echo "SRC: " $(SRC)
	@echo "OBJ: " $(OBJ)
	@echo "SRCS: " $(SRCS)
	@echo "OBJS: "	$(OBJS)
	@echo "HEADERS: " $(HEADERS)