#define _GNU_SOURCE 1
#include <sched.h>
#include <stdio.h>
#include <iostream>
#include <chrono>
#include <cmath>
#include <unistd.h>
#include <signal.h>

void setSchedulingPolicy (int policy, int priority)
{
    sched_param sched;
    sched_getparam(0, &sched);
    sched.sched_priority = priority;
    if (sched_setscheduler(0, policy, &sched)) {
        perror("sched_setscheduler");
        exit(EXIT_FAILURE);
    }
}

void workload_1ms (void)
{
        int repeat = 100000;    // tune this for the right amount of workload
        int total = 1;
        for (int i = 0; i <= repeat; i++)
        {
            total = total+1;
            total = total*100;
            sqrt(total);
            total+10;
            total/5;
            sqrt(total);
        }

}

void pinCPU (int cpu_number)
{
    cpu_set_t mask;
    CPU_ZERO(&mask);

    CPU_SET(cpu_number, &mask);

    if (sched_setaffinity(0, sizeof(cpu_set_t), &mask) == -1)
    {
        perror("sched_setaffinity");
        exit(EXIT_FAILURE);
    }
}

sig_atomic_t count = 0;
sig_atomic_t t = 0;
void collectData (int param)
{
    std::cout << (double)::count/::t << std::endl;
}

int main (void)
{
    void (*prev_handler)(int);
    prev_handler = signal (SIGINT, collectData);
    int period = 7000; // unit: microsecond
    int delta;
    pinCPU(0);
    setSchedulingPolicy (SCHED_FIFO, 99);
    while (1)
    {
        std::chrono::system_clock::time_point startTime = std::chrono::system_clock::now();
        for (int j = 0; j < 4; j++)
        {
            workload_1ms ();
        }
        std::chrono::system_clock::time_point endTime = std::chrono::system_clock::now();
        delta = std::chrono::duration_cast<std::chrono::microseconds>(endTime - startTime).count();
        ::t++;
	if (delta > period)
        {
	    ::count++;
            continue;
        }
        else
        {
            usleep (period-delta);
        }
    }
    return 0;

}
