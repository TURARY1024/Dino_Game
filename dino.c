/*
 * file: dino.c
 */
#include <8051.h>
#include "preemptive.h"
#include "buttonlib.h"
#include "keylib.h"
#include "lcdlib.h"
extern void myTimer0Handler(void);  // this functino is define in preemptive.c
extern void delay(unsigned char n); // this function is define in lcdlib.c

// Global Variable
__data __at(0x79) char dino_row;   // 0x79: dinosaur current row; 0 means top row, 1 means bottom row
__data __at(0x7A) char score;      // 0x7A: game score Can store from 0~99
__data __at(0x7B) char difficulty; // 0x7B: game difficulty (0–9) as set by keypad
//__data __at(0x33) char difficulty_set; // 0x33: unused 
__data __at(0x7C) char game_over; // 0x7C: flag indicating game over (0 = running, 1 = over)
//__data __at(0x35) char game_map[2][2]; // 0x35: old version, replaced by new full map
__data __at(0x20) char game_map[2][16]; // 0x20: game map data for 2 rows × 16 columns
__data __at(0x7D) char k;               // 0x7D: latest key value from keypad
__data __at(0x7E) char prev;            // 0x7E: previous key value 
__data __at(0x7F) char digit;           // 0x7F: for parsing digit input

// __data __at(0x3D) char mutex;          // 0x3D:mutual exclusive access
char mutex; // mutual exclusive access
// __data __at(0x3E) char myRand;         // 0x3E
char myRand; // Design my own random number generator

// __data __at(0x3E)char prev ;  // The first character is null
// __data __at(0x3F)char digit ;

// declare the bitmap data
const char dinosaur[] = {0x07, 0x05, 0x06, 0x07, 0x14, 0x17, 0x0E, 0x0A};
const char cactus[] = {0x04, 0x05, 0x15, 0x15, 0x16, 0x0C, 0x04, 0x04};

void LCD_set_symbol(char code, const char symb[])
{


    LCD_setCgRamAddress(code);

    LCD_write_char(symb[0]);
    LCD_write_char(symb[1]);
    LCD_write_char(symb[2]);
    LCD_write_char(symb[3]);
    LCD_write_char(symb[4]);
    LCD_write_char(symb[5]);
    LCD_write_char(symb[6]);
    LCD_write_char(symb[7]);

}
// This function is similar to Part1 Producer,to set difficulty and move the dino
// 2 is up, 8 is down
void keypad_ctrl(void)
{
    prev = '\0';  // The first character is null
    digit = '\0'; // To get the digit for setting difficulty
    while (1)
    {                    // Loop infinitely
        k = KeyToChar(); // Read the keyPad
        if (prev != '\0' && k == '\0')
        {
            if (difficulty == 255)
            {
                // We haven't set difficulty yet
                if (prev >= '0' && prev <= '9')
                {
                    digit = prev; // To track the digit
                }
                else if (prev == '#' && digit != '\0')
                {
                    difficulty = digit - '0'; // Save digit as difficulty
                }
            }
            else
            {
                if (prev == '2')
                {
                    EA = 0;
                    dino_row = 0; // Move dino up
                    EA = 1;
                }
                else if (prev == '8')
                {
                    EA = 0;
                    dino_row = 1; // Move dino down
                    EA = 1;
                }
            }
        }
        prev = k;
        ThreadYield();
    }
}

// unsigned char a,b;
// __data __at(0x2E) unsigned char row_temp; // 2E: row_temp
unsigned char row_temp; 
// __data __at(0x2F) unsigned char col_temp;   // 2F: col_temp
unsigned char col_temp;
// This thread is going to show the displayed content
// Repeatedly refresh the LCD
void render_task(void)
{
    EA = 0;

    LCD_clearScreen(); // Clear the screen
    while (!LCD_ready())
        ;
    for (unsigned char q = 0; q < 40; q++)
        delay(10);

    EA = 1;

    while (1)
    {
        while (difficulty == 255)
        {
            ThreadYield();
        }; // Wait until difficulty is set
        // If difficulty is set, we can start the game
        // First we track whether the game is over or not
        EA = 0;
        if (game_over)
        {

            while (!LCD_ready());
   

            LCD_clearScreen(); // Clear the screen
            while (!LCD_ready())
                ;
            for (unsigned char q = 0; q < 40; q++)
                delay(10);

            while (!LCD_ready());

            LCD_cursorGoTo(0, 0); // Move cursor to the (0,0) aka upper left corner

            while (!LCD_ready());

            // LCD_write_string("Game Over"); // Show game over message
            LCD_write_char('G');
            LCD_write_char('a');
            LCD_write_char('m');
            LCD_write_char('e');
            LCD_write_char(' ');
            LCD_write_char('O');
            LCD_write_char('v');
            LCD_write_char('e');
            LCD_write_char('r');

            while (!LCD_ready());

            LCD_cursorGoTo(1, 0); // Move cursor to the second line and lower left corner
            while (!LCD_ready());
            LCD_write_char('S');
            LCD_write_char('c');
            LCD_write_char('o');
            LCD_write_char('r');
            LCD_write_char('e');
            LCD_write_char(':');
            LCD_write_char(' ');
            while (!LCD_ready());
            LCD_write_char((score / 10) + '0'); // Ten's digit
            while (!LCD_ready())
                ;
            LCD_write_char((score % 10) + '0'); // First digit

            while (1); // Wait forever
        }
        else
        {
            // Refresh game map
            LCD_clearScreen();
            while (!LCD_ready());
            for (unsigned char q = 0; q < 40; q++)
                delay(10);
            for (row_temp = 0; row_temp < 2; row_temp++)
            {

                for (col_temp = 0; col_temp < 16; col_temp++)
                {
                    LCD_cursorGoTo(row_temp, col_temp);//Move to row_temp and col_temp
                    while (!LCD_ready());

                    if (row_temp == dino_row && col_temp == 0)
                    {

                        LCD_write_char('\1'); // Write the dinosaur bitmap
                        while (!LCD_ready());
                            
                     
                    }
                    else if (game_map[row_temp][col_temp])
                    {
                        LCD_write_char('\2');
                        while (!LCD_ready());
                        
                    }
                    else
                    {
                        LCD_write_char(' '); // Write space
                                            
                        while (!LCD_ready());
                            
                    }
                }
            }
        }
        EA = 1;
        ThreadYield();
    }
}

// This thread is goning to update the state of the game by shifting the cacti,moving dinoand check collision
void game_ctrl(void)
{
    EA = 0;
    myRand = 137; // My own rand
    // Initialize the game state
    dino_row = 0;
    score = 0;
    difficulty = 255;//Initial difficulty is 255
    game_over = 0;

    for (row_temp = 0; row_temp < 2; row_temp++)
    {
        for (col_temp = 0; col_temp < 16; col_temp++)
        {
            game_map[row_temp][col_temp] = 0; // Initialize the game map
        }
    }

    EA = 1;
    while (difficulty == 255)
    {
        ThreadYield();
    }; // Wait until difficulty is set

    // Set the game map
    while (!game_over)
    {
        SemaphoreWait(mutex);
        EA = 0;
        // Move the cacti to left one column
        for (row_temp = 0; row_temp < 2; row_temp++)
        {
            for (col_temp = 0; col_temp < 15; col_temp++)
            {
                game_map[row_temp][col_temp] = game_map[row_temp][col_temp + 1]; // Move the cacti to left one column
            }

            game_map[row_temp][15] = 0; // Set the last column to 0
        }

        // Choose one random row to generate cactus
        // Because rand() seems not working in SDCC,so I use my own rand

        // Generate a random number
        myRand = myRand * 17 + 23;
        //Generate Upper row cactus
        if (myRand % 3 == 0)
        {

            // [1][14] has cactus，[0][15] cannot have cactus
            if (game_map[1][14]==0)
            {

                    game_map[0][15] = 1; // Generate cactus at row 0 col 15

            }

        }
        //Generate Lowwer row cactus
        else if (myRand % 3 == 1)
        {
            // [0][14] has CACtus，[1][15] cannot have cactus
            if (game_map[0][14]==0)
            {

                    game_map[1][15] = 1; // Generate cactus at row 1 col 15

            }

        }
        if (game_map[dino_row][0])
        {
            game_over = (char)1; // If the dino is at the same position as the cactus, game over

            return; // Game finish
        }
        else if (game_map[1 - dino_row][0])
        {
            score++; // If the dino is not at the same position as the cactus, we get a score
        }
        // Base on the difficulty we set we delay the time until the next cactus
        EA = 1;
        SemaphoreSignal(mutex);
        for ( char q = 0; q < (char)10*difficulty; q++)
            delay(10);
        ThreadYield();
    }
}

void main(void)
{

    EA = 0;     // Critical start
    LCD_Init(); // Initialize LCD
    LCD_entryModeSet(1, 0);
    Init_Keypad();                   // Initialize keypad
    LCD_set_symbol('\10', dinosaur); // bitmap for dinosaur
    LCD_set_symbol('\20', cactus);   // bitmap for cactus
    SemaphoreCreate(mutex, 1);       // one mutex
    ThreadCreate(keypad_ctrl);       // Create keypad thread
    ThreadCreate(render_task);       // Create render task thread
    // ThreadCreate(game_ctrl);
    EA = 1;      // Critical end
    game_ctrl(); // Let main be game control
    while (1)
    {
        ThreadYield();
    };
}

void timer0_ISR(void) __interrupt(1)
{
    __asm 
        ljmp _myTimer0Handler
    __endasm;
}

void _sdcc_gsinit_startup(void)
{
    __asm 
        LJMP _Bootstrap
    __endasm;
}
void _mcs51_genRAMCLEAR(void)
{
}
void _mcs51_genXINIT(void) {}
void _mcs51_genXRAMCLEAR(void) {}