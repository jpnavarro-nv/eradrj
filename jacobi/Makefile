# Copyright (c) 2023 NVIDIA Corporation.  All rights reserved. 
CC := nvc
ACCFLAGS_1 := -fast
ACCFLAGS_2 := -fast -acc=multicore -Minfo=accel
ACCFLAGS_3 := -fast -acc=gpu -gpu:managed -Minfo=accel
NVTXLIB := -I/opt/nvidia/hpc_sdk/Linux_x86_64/23.5/cuda/12.1/include

laplace_serial: jacobi.c laplace2d.c
	${CC} ${ACCFLAGS_1} -o laplace jacobi.c laplace2d.c ${NVTXLIB} 

laplace_multicore: jacobi.c laplace2d.parallel.c
	${CC} ${ACCFLAGS_2} -o laplace jacobi.c laplace2d.parallel.c ${NVTXLIB} 

laplace_gpu: jacobi.c laplace2d.parallel.c
	${CC} ${ACCFLAGS_3} -o laplace jacobi.c laplace2d.parallel.c ${NVTXLIB} 

clean:
	rm -f *.o laplace