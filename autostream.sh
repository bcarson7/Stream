export OMP_NUM_THREADS=1
./stream-scaling | grep 'Threads\|Copy\|Scale\|Add\|Triad' > stream.log
for i in {2..24}
do
export OMP_NUM_THREADS=$i
./stream | grep 'Threads\|Copy\|Scale\|Add\|Triad' >> stream.log
done
