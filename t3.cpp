#define _GNU_SOURCE
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
        int total = 1;
        int repeat = 100000; // tune this for the right amount of workload
        for (int i = 0; i <= repeat; i++)
        {
              total = total+i;  // add some computation here (e.g., use sqrt() in cmath)
        }
}

sig_atomic_t t = 0;
void collectData (int param)
{
    std::cout << ::t << std::endl;
}

int main (void)
{
    void (*prev_handler)(int);
    prev_handler = signal (SIGINT, collectData);
    int period = 7000; // unit: microsecond
    int delta;
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
            continue;
        }
        else
        {
            usleep (period-delta);
        }
    }
    return 0;

}
