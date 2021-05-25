all:
	git submodule update --init
	./scripts/patch.sh
	cd qemu && ./configure --target-list=riscv64-softmmu,riscv32-softmmu --extra-ldflags=-lrt && make -j
