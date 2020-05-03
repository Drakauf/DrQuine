PHONY = all clean fclean re

COLLEEN = Colleen
SULLY = Sully
GRACE = Grace

# **************************************************************************** #
#          PATH                                                                #
# **************************************************************************** #

SRC_PATH = ./src/
OBJ_PATH = ./obj/

# **************************************************************************** #
#           SRCS                                                               #
# **************************************************************************** #

SRC_NAME = Colleen.s Grace.s Sully.s

# **************************************************************************** #
#           VAR                                                                #
# **************************************************************************** #

OBJ_NAME= $(SRC_NAME:.s=.o)

OBJ = $(addprefix $(OBJ_PATH), $(OBJ_NAME))
SRC = $(addprefix $(SRC_PATH), $(SRC_NAME))
PRT = $(addprefix $(PRINT_PATH), $(PRT_NAME))

# **************************************************************************** #
#           FLAG                         						               #
# **************************************************************************** #

ifndef MAKE_OBJ
	MAKE_OBJ = nasm -f macho64 
endif

ifndef MAKE_EXEC
	MAKE_EXEC = ld -macosx_version_min 10.8.0 -lSystem -no_pie -o
endif
	
# **************************************************************************** #
#           REGLES                                                             #
# **************************************************************************** #

all : $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(OBJ_PATH) $(OBJ)
	@$(MAKE_EXEC) $@ ./obj/Colleen.o
	@printf "\033[32mColleen: [OK]\033[0m\n"

$(GRACE): $(OBJ_PATH) $(OBJ)
	@$(MAKE_EXEC) $@ ./obj/Grace.o
	@printf "\033[32mGrace: [OK]\033[0m\n"

$(SULLY): $(OBJ_PATH) $(OBJ)
	@$(MAKE_EXEC) $@ obj/$(SULLY).o
	@printf "\033[32mSully: [OK]\033[0m\n"

$(OBJ_PATH):
	@mkdir -p $(OBJ_PATH) 2> /dev/null

$(OBJ_PATH)%.o: $(SRC_PATH)%.s
	@$(MAKE_OBJ) $< -o $@
	@printf "\033[33m$@\033[0m\n"

clean:
	@rm -rf ./obj

fclean: clean
	@rm -rf $(COLLEEN) $(GRACE) $(SULLY)
	@printf "\033[31mSully: [Deleted]\033[0m\n"
	@printf "\033[31mGrace: [Deleted]\033[0m\n"
	@printf "\033[31mColleen: [Deleted]\033[0m\n"
re: fclean all
