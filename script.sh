for i in {1..24};do
	echo $i;
	mpiexec -np $i ./trace data/beauty.scd output.png 0 2 | grep Elapsed;
	killall trace
done;

