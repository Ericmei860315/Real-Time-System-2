#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <pthread.h>
#include <cmath>
#include <iostream>
#include <chrono>
#include <fstream>
#include <unistd.h>
#include <sched.h>
#include <signal.h>

void *do_one_thing(void *);
void *do_another_thing(void *);
void do_wrap_up(int, int);
void *do_another_thing2(void *);
void pinCPU(int);
void setSchedulingPolicy(int, int);

int r1 = 0, r2 = 0, r3=0, r4=0, r5=0, r6=0 ,r7=0;

pthread_mutex_t mutex_section1 = PTHREAD_MUTEX_INITIALIZER;

extern int
main(void)
{
  pinCPU(0);
  setSchedulingPolicy(SCHED_FIFO, 99);
  pthread_t thread1, thread2 ,thread3,thread4, thread5, thread6, thread7;
  if (pthread_create(&thread1, 
		 NULL,
		 do_one_thing,
		 (void *) &r1) != 0)
	perror("pthread_create"), exit(1); 

  if (pthread_create(&thread2, 
		 NULL, 
		 do_another_thing,
		 (void *) &r2) != 0)
	perror("pthread_create"), exit(1);

  if (pthread_create(&thread3, 
		 NULL, 
		 do_another_thing2,
		 (void *) &r3) != 0)
	perror("pthread_create"), exit(1); 
  
  if (pthread_create(&thread4,
		 NULL,
		 do_another_thing,
		 (void *) &r4) !=0)
  perror("pthread_create"), exit(1);  
  if (pthread_create(&thread5,
		 NULL,
		 do_another_thing,
		 (void *) &r5) !=0)
  perror("pthread_create"), exit(1);   
  if (pthread_create(&thread6,
		 NULL,
		 do_another_thing,
		 (void *) &r6) !=0)
  perror("pthread_create"), exit(1);
  if (pthread_create(&thread7,
		 NULL,
		 do_another_thing,
		 (void *) &r7) !=0)
  perror("pthread_create"), exit(1);

         
	
  if (pthread_join(thread1, NULL) != 0)
	perror("pthread_join"),exit(1);

  if (pthread_join(thread2, NULL) != 0)
	perror("pthread_join"),exit(1);

  if (pthread_join(thread3, NULL)!=0)
	perror("pthread_join"),exit(1);

  if (pthread_join(thread4, NULL)!=0)
	perror("pthread_join"),exit(1);

  if (pthread_join(thread5, NULL)!=0)
	perror("pthread_join"),exit(1);

  if (pthread_join(thread6, NULL)!=0)
	perror("pthread_join"),exit(1);

  if (pthread_join(thread7, NULL)!=0)
	perror("pthread_join"),exit(1);
  

  return 0; 
}

void *do_one_thing(void *pnum_times)
{
  int period = 50000; // unit: microsecond
  int delta;
  setSchedulingPolicy (SCHED_FIFO, 99);
  while (1)
    {
        std::chrono::system_clock::time_point startTime = std::chrono::system_clock::now();
       //pthread_mutex_lock (&mutex_section1);
          for (int j = 0; j < 2; j++)
          {
	         int repeat = 50000;	// tune this for the right amount of workload
	         int total = 1;
	   pthread_mutex_lock (&mutex_section1); 
           for (int i = 0; i <= repeat; i++)
           {
	            total = total+1;
	            total = total*100;
	            sqrt(total);
	            total+10;
	            total/5;
	            sqrt(total);
           }
	   pthread_mutex_unlock (&mutex_section1);
          }
        std::chrono::system_clock::time_point endTime = std::chrono::system_clock::now();
        delta = std::chrono::duration_cast<std::chrono::microseconds>(endTime - startTime).count();
        if (delta > period)
        {
            continue;
        }
        else
        {
            usleep (period-delta);
        }
	printf("P1:%d\n", delta);
    }
    return 0;
}
void *do_another_thing(void *pnum_times)
{
  int period = 100000; // unit: microsecond
  int delta;
  setSchedulingPolicy (SCHED_FIFO, 98);
  while (1)
    {
        std::chrono::system_clock::time_point startTime = std::chrono::system_clock::now();
        for(int x=0;x<2;x++){
          for (int j = 0; j < 2; j++)
          {
	         int repeat = 100000;	// tune this for the right amount of workload
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
        }
        std::chrono::system_clock::time_point endTime = std::chrono::system_clock::now();
        delta = std::chrono::duration_cast<std::chrono::microseconds>(endTime - startTime).count();
        if (delta > period)
        {
            continue;
        }
        else
        {
            usleep (period-delta);
        }
	//printf("P2:%d\n",delta);
    }
    return 0;
}

void *do_another_thing2(void *pnum_times)
{
 int period = 200000; // unit: microsecond
 int delta;
 setSchedulingPolicy (SCHED_FIFO, 97);
 while (1)
 {
   std::chrono::system_clock::time_point startTime = std::chrono::system_clock::now();
   //pthread_mutex_lock (&mutex_section1);
    for(int x=0;x<8;x++){
      for (int j = 0; j < 2; j++)
      {
	         int repeat = 250000;	// tune this for the right amount of workload
	         int total = 1;
		pthread_mutex_lock (&mutex_section1); 
           for (int i = 0; i <= repeat; i++)
           {
	            total = total+1;
	            total = total*100;
	            sqrt(total);
	            total+10;
	            total/5;
	            sqrt(total);
           }
	   pthread_mutex_unlock (&mutex_section1);
      }
    } 
   //pthread_mutex_unlock (&mutex_section1);
   std::chrono::system_clock::time_point endTime = std::chrono::system_clock::now();
   delta = std::chrono::duration_cast<std::chrono::microseconds>(endTime - startTime).count();
   if (delta > period)
   {
      continue;
   }
   else
   {
     usleep (period-delta);
   }
	 //printf("P3:%d\n", delta);
 }
 return 0;
}

void do_wrap_up(int one_times, int another_times)
{
  int total;
  total = one_times + another_times;
  printf("All done, one thing %d, another %d for a total of %d\n",
	one_times, another_times, total);
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

void setSchedulingPolicy (int newPolicy, int priority)
{
    sched_param sched;
    int oldPolicy;
    if (pthread_getschedparam(pthread_self(), &oldPolicy, &sched)) {
        perror("pthread_setschedparam");
        exit(EXIT_FAILURE);
    }
    sched.sched_priority = priority;
    if (pthread_setschedparam(pthread_self(), newPolicy, &sched)) {
        perror("pthread_setschedparam");
        exit(EXIT_FAILURE);
    }
}






