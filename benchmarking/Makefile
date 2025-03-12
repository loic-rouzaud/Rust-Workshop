CC = gcc
RUSTC = rustc
GHC = ghc

C_SRC = count.c
RUST_SRC = count.rs
HS_SRC = count.hs

C_OBJ = count.o

C_BIN = count_c
RUST_BIN = count_rust
HS_BIN = count_hs

CFLAGS = -O3
RUSTFLAGS = -C opt-level=3
HSFLAGS = -O2

all: $(C_BIN) $(RUST_BIN) $(HS_BIN)

$(C_BIN): $(C_OBJ)
	$(CC) $(C_OBJ) -o $(C_BIN)

$(C_OBJ): $(C_SRC)
	$(CC) $(CFLAGS) -c $(C_SRC) -o $(C_OBJ)

$(RUST_BIN): $(RUST_SRC)
	$(RUSTC) $(RUSTFLAGS) $(RUST_SRC) -o $(RUST_BIN)

$(HS_BIN): $(HS_SRC)
	$(GHC) $(HSFLAGS) $(HS_SRC) -o $(HS_BIN)

fclean:
	rm -f $(C_OBJ) $(C_BIN) $(RUST_BIN) $(HS_BIN) count.hi count.o
