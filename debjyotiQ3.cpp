#include "basicIO.h"

int main() {
    char personName[48];
    char ageStr[15];
    char reply[4];

    // Initialize I/O system
    io.activateInput();

    // Ask for user's name
    io.outputstring("Name: ");
    io.inputstring(personName, sizeof(personName));

    // Ask for user's age
    io.outputstring("Age: ");
    io.inputstring(ageStr, sizeof(ageStr));

    // Show what was entered
    io.outputstring("\nDetails entered: ");
    io.outputstring(personName);
    io.outputstring(" | Age ");
    io.outputstring(ageStr);
    io.outputstring("\nProceed? (y/n): ");

    // Take reply
    io.inputstring(reply, sizeof(reply));

    // Check confirmation
    if ((reply[0] == 'y') || (reply[0] == 'Y')) {
        io.outputstring("Accepted\n");
    } else {
        io.outputstring("Not Accepted\n");
    }

    // Close I/O
    io.outputstring("\nProgram ended.\n");
    io.terminate();
    return 0;
}
