for i in {1..24}
do
export OMP_NUM_THREADS=$i
./stream | grep 'Threads\|Copy\|Scale\|Add\|Triad' >> stream.log
done
