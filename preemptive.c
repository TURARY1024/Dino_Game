#include <8051.h>

#include "preemptive.h"

// Saved stack pointers(3) from 0x30 to 0x32

__data __at(0x70) char savedSP0;
__data __at(0x71) char savedSP1;
__data __at(0x72) char savedSP2;
// __data __at(0x73) char savedSP3;

__data __at(0x74) ThreadID current_thread; // current thread ID at 0x74
__data __at(0x75) char bitmap;             // bitmap at 0x75. Indicates which threads are active 
__data __at(0x76) ThreadID tID;            // Thread ID at 0x76. Holds first available thread ID during ThreadCreate
__data __at(0x77) ThreadID next;           // Next thread to check 
__data __at(0x78) char tempSP;             // used to restore SP after setting up new thread


// Saving the context of the current thread including ACC,B,DPL,DPH,PSW
// PPT CH06 P37
#define SAVESTATE               \
    __asm \
        PUSH ACC \
        PUSH B \
        PUSH DPL \
        PUSH DPH \
        PUSH PSW \
    __endasm; \
    if (current_thread == 0)      \
        savedSP0 = SP;            \
    else if (current_thread == 1) \
        savedSP1 = SP;            \
    else                          \
        savedSP2 = SP;            \
   
// Doing the reverse of SAVESTATE
#define RESTORESTATE                  \
        if (current_thread == 0)      \
        {                             \
            SP = savedSP0;            \
        }                             \
        else if (current_thread == 1) \
        {                             \
            SP = savedSP1;            \
        }                             \
        else                            \
        {                             \
            SP = savedSP2;            \
        }                             \
       __asm \
        POP PSW \
        POP DPH \
        POP DPL \
        POP B \
        POP ACC \
    __endasm;

/*
 * we declare main() as an extern so we can reference its symbol
 * when creating a thread for it.
 */

extern void main(void);

/*
 * Bootstrap is jumped to by the startup code to make the thread for
 * main, and restore its context so the thread can run.
 */

void Bootstrap(void)
{

    bitmap = 0;               // No threads created yet (all 4 bits cleared)
    savedSP0 = savedSP1 = savedSP2 = 0; // Clear all saved stack pointers
    current_thread = 0;            // Initialize current thread ID to 0
    tID = 0;                       // Reset thread ID
    next = 0;                      // Reset next thread tracker
    tempSP = 0;                    // Clear temporary SP 
    //SP = 0x07;                     // Set initial system stack pointer 

    //Set up timer in 08-timer-preemption page 18
    TMOD=0;//timer 0 mode 0
    IE=0x82; //enable timer 0 interrupt
    TR0=1; //start running timer0
 
    current_thread=ThreadCreate(main); // Create main thread and  set current thread to the thread ID of main
    RESTORESTATE;       // Restore main context;
}

/*
 * ThreadCreate() creates a thread so it is ready
 * to be restored .
 */
ThreadID ThreadCreate(FunctionPtr fp)
{
    (void)fp;//To eliminate the warning, but it will not affect the result
    // If all 4 threads are already created , return -1
    if ((bitmap & 0x07) == 0x07) {
        return -1;//Return cannot be inside critical
    }
    //ThreadCreate should be preempted
    EA=0;//Start Critical
    
    // Find the first available thread ID (bit not set in bitmap)
    for (tID = 0; tID < MAXTHREADS; tID++)
    {
        // if ((bitmap & (1 << tID)) == 0)
         if (((bitmap >> tID) & 1) == 0) 
        {
            break;// Found an unused thread slot
        }
    }

    // Mark the selected thread ID as used in the bitmap
    bitmap |= (1 << tID); // making that bit to 1


    // Backup for the current SP
    tempSP = SP; // Save original SP before switching to new thread stack

    // Assign stack base address for the new thread
    // SP points to the last used location, so we set it to 0x3F, 0x4F, etc.
    //It will be SP++ when we call it,like 0x3F+1=0x40
    if (tID == 0) {
        SP = 0x3F; // Thread 0 stack range: 0x40 ~ 0x4F
    } else if (tID == 1) {
        SP = 0x4F; // Thread 1 stack range: 0x50 ~ 0x5F
    } else  {
        SP = 0x5F; // Thread 2 stack range: 0x60 ~ 0x6F
    } 

   
    // Push low first then high
    __asm 
        push DPL
        push DPH
    __endasm;
    
    __asm 
        // Clear ACC and push
        MOV A, #0       // A <- 0
        MOV ACC, A      // ACC <- 0
        PUSH ACC        // Save ACC on stack

        // Clear B and push
        MOV A, #0       // A <- 0
        MOV B, A        // B <- 0
        PUSH B          // Save B on stack

        // Clear DPL and push
        MOV A, #0       // A <- 0
        MOV DPL, A      // DPL <- 0
        PUSH DPL        // Save DPL on stack

        // Clear DPH and push
        MOV A, #0       // A <- 0
        MOV DPH, A      // DPH <- 0
        PUSH DPH        // Save DPH on stack
    __endasm;

    // PPT CH06 P16
    if (tID == 0)
    {
        // 00000000B for bank 0
        __asm 
            mov PSW, #0x00 
            push PSW
        __endasm;
    }
    else if (tID == 1)
    {
        // 00001000B for bank 1
        __asm 
            mov PSW, #0x08 
            push PSW
        __endasm;
    }
    else 
    {
        // 00010000B for bank 2
        __asm 
            mov PSW, #0x10 
            push PSW
        __endasm;
    }
   

    if (tID == 0)
    {
        savedSP0 = SP; 
    }
    else if (tID == 1)
    {
        savedSP1 = SP;
    }
    else
    {
        savedSP2 = SP;
    }
    

    SP = tempSP; // Restore SP
    EA=1;//end of critical
   
    return tID;
    
}

/*
 * this is called by a running thread to yield control to another
 * thread.  ThreadYield() saves the context of the current
 * running thread, picks another thread, and then restores its state.
 */

//We will not use ThreadYield in this Checkpoint
void ThreadYield(void)
{
    // //ThreadYield should be preempted
    EA=0;//Start Critical

     // saves the context of the current running thread
    SAVESTATE;
    // SAVE R0 ~ R7
    // __asm
    //     PUSH 0
    //     PUSH 1
    //     PUSH 2
    //     PUSH 3
    //     PUSH 4
    //     PUSH 5
    //     PUSH 6
    //     PUSH 7
    // __endasm;

     // Try to find the next runnable thread in round-robin fashion
    //  next = (current_thread + 1) % 4; // Start checking from the next thread
     next = (current_thread + 1) % MAXTHREADS; // Start checking from the next thread
    while (1)
    {
        // Check if thread 'next' is alive 
        if (bitmap & (0b0001 << next))
        {
            current_thread = next;// Switch to this runnable thread
            break;// Exit the loop
        }
        // Move on to next thread ID (0–3)
        // next = (next + 1) % 4;
        next = (next + 1) % MAXTHREADS;
    }
    // RESTORE R7 ~ R0
    // __asm
    //     POP 7
    //     POP 6
    //     POP 5
    //     POP 4
    //     POP 3
    //     POP 2
    //     POP 1
    //     POP 0
    // __endasm;
    // Restore the context of the new current thread and resume execution
    RESTORESTATE;
    EA=1;//end of critical 
}

/*
 * ThreadExit() is called by the thread's own code to terminate
 * itself.  It will never return; instead, it switches context
 * to another thread.
 */
void ThreadExit(void)
{
    //ThreadExit should be preempted
    EA=0; //Start critical
 
    // clear the bit for the current thread
    bitmap &= ~(1 << current_thread);// Mark current thread as inactive

    // next = (current_thread + 1) % 4;   // Try next thread
    next = (current_thread + 1) %MAXTHREADS;   // Try next thread
    ThreadID start = next; // Mark starting point to detect full cycle

    while (1) {
        if (bitmap & (1 << next)) { // If thread 'next' is active
            current_thread = next; // Switch to it
            break;
        }
        // next = (next + 1) % 4;
        next = (next + 1) % MAXTHREADS;
        if (next == start) {
            //No alive thread
            while (1);  
        }   
    }
    RESTORESTATE;
    EA=1;//end of critical
}

void myTimer0Handler(void) {
    //Because we cannot use critical in this function,hence i didn't cannot call ThreadYield(),because it has critical in it
    EA=0;//don't do critical disable interrupt

    //Those code is the same as threadyield(), but without critical
     // saves the context of the current running thread
    SAVESTATE;

     // Try to find the next runnable thread in round-robin fashion
    // next = (current_thread + 1) % 4; // Start checking from the next thread
  next = (current_thread + 1) % MAXTHREADS; // Start checking from the next thread
    while (1)
    {
        // Check if thread 'next' is alive 
        if (bitmap & (0b0001 << next))
        {
            current_thread = next;// Switch to this runnable thread
            break;// Exit the loop
        }
        // Advance to next thread ID (0–3)
        // next = (next + 1) % 4;
            next = (next + 1) % MAXTHREADS;
    }
    // Restore the context of the new current thread and resume execution
    RESTORESTATE;
    EA=1;//enable interrupt

    __asm
        RETI
    __endasm;
}
