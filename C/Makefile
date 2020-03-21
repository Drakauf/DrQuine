PHONY = all clean fclean re

COLLEEN = Colleen
SULLY = Sully
GRACE = Grace

# **************************************************************************** #
#          PATH                                                                #
# **************************************************************************** #

SRC_PATH = ./src/
OBJ_PATH = ./obj/
INC_PATH = ./includes/

# **************************************************************************** #
#           SRCS                                                               #
# **************************************************************************** #

SRC_NAME = Colleen.c Sully.c Grace.c

# **************************************************************************** #
#           VAR                                                                #
# **************************************************************************** #

OBJ_NAME= $(SRC_NAME:.c=.o)

OBJ = $(addprefix $(OBJ_PATH), $(OBJ_NAME))
SRC = $(addprefix $(SRC_PATH), $(SRC_NAME))
PRT = $(addprefix $(PRINT_PATH), $(PRT_NAME))

# **************************************************************************** #
#           FLAG                         						               #
# **************************************************************************** #

ifndef FLAG
	FLAGS = -Wall -Wextra -Werror
endif

# **************************************************************************** #
#           REGLES                                                             #
# **************************************************************************** #

all : $(COLLEEN) $(SULLY) $(GRACE)

$(NAME): $(OBJ_PATH) $(OBJ)
	@printf "\033[32m[OK]\033[0m\n"

$(COLLEEN): $(OBJ_PATH) $(OBJ)
	@gcc $(FLAGS) -o $@ obj/$(COLLEEN).o
	@printf "\033[32mColleen: [OK]\033[0m\n"

$(GRACE): $(OBJ_PATH) $(OBJ)
	@gcc $(FLAGS) -o $@ obj/$(GRACE).o
	@printf "\033[32mGrace: [OK]\033[0m\n"

$(SULLY): $(OBJ_PATH) $(OBJ)
	@gcc $(FLAGS) -o $@ obj/$(SULLY).o
	@printf "\033[32mSully: [OK]\033[0m\n"

$(OBJ_PATH):
	@mkdir -p $(OBJ_PATH) 2> /dev/null

$(OBJ_PATH)%.o: $(SRC_PATH)%.c
	@gcc $(FLAGS) -o $@ -c $<
	@printf "\033[33m$@\033[0m\n"

clean:
	@rm -rf ./obj

fclean: clean
	@rm -rf $(COLLEEN) $(GRACE) $(SULLY)
	@printf "\033[31mSully: [Deleted]\033[0m\n"
	@printf "\033[31mGrace: [Deleted]\033[0m\n"
	@printf "\033[31mColleen: [Deleted]\033[0m\n"
re: fclean all
