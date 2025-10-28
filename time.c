#include <sys/time.h>

double elapsed_time(struct timeval* start_time, struct timeval* end_time){
    double start = (double)start_time->tv_sec + (double)start_time->tv_usec / 1e6;
    double end = (double)end_time->tv_sec + (double)end_time->tv_usec / 1e6;

    return end - start;
}