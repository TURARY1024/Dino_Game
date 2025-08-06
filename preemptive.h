/*
 * file: preemptive.h
 *
 * This is the include file for the preemptive multithreading
 * package. It is to be compiled by SDCC and targets the EdSim51
 * as the target architecture.
 *
 * CS 342302 Spring 2025 ZHI-YE,HUANG 
 */

#ifndef __PREEMPTIVE_H__
#define __PREEMPTIVE_H__
// #define MAXTHREADS 4 /* not including the scheduler */
#define MAXTHREADS 3 /* not including the scheduler */
/* the scheduler does not take up a thread of its own */

//For preemptivec.c
typedef char ThreadID;
typedef void (*FunctionPtr)(void);
ThreadID ThreadCreate(FunctionPtr);//Create a thread and return its ID
void ThreadYield(void);//We will not use this now
void ThreadExit(void);//Let this thread exit and turn the bit in bitmap to 0
void myTimer0Handler(void);//Handle when should change the thread

//For testpreemptive.c

// create a counting semaphore s
#define SemaphoreCreate(s,n) s = n

//Expand s into _s
#define CNAME(s) _ ## s

//signal() semaphore s by increase its count
#define SemaphoreSignal(s) {\
    __asm \
        INC CNAME(s) \
    __endasm;\
}
// do(busy-)wait() on semaphore s
#define SemaphoreWait(s) SemaphoreWaitBody(s, __COUNTER__) 

//I tried to use label ## $:
//but it will occur error, it seems fail to expand macro label,so i replace it with defing my own label
#define myLabel(label) label ## $

//Inplement the function '
//Wait(S):
//  while(S<=0){}//busy wait
//S--;

//BTW, I put JZ first than JB is because it encouner S==0 first then S<0.Hence, i think it should not reverse
#define SemaphoreWaitBody(S, label) \
{ __asm \
    myLabel(label):  \
        MOV A, CNAME(S) \
        JZ myLabel(label)  \
        JB ACC.7,myLabel(label) \
        DEC  CNAME(S) \
__endasm; \
}

#endif // __PREEMPTIVE_H__
