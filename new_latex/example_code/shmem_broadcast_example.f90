INTEGER PSYNC(SHMEM_BCAST_SYNC_SIZE)
INTEGER DEST, SOURCE, NLONG, PE_ROOT, PE_START,
&   LOGPE_STRIDE, PE_SIZE, PSYNC
COMMON /COM/ DEST, SOURCE

DATA PSYNC /SHMEM_BCAST_SYNC_SIZE*SHMEM_SYNC_VALUE/

CALL SHMEM_BROADCAST64(DEST, SOURCE, NLONG, 0, 4, 0, 4, PSYNC)


