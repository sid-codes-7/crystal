// ovenTime returns the amount in minutes that the lasagna should stay in the
// oven.
int ovenTime() {
    // TODO: Return the correct time.
    int ovenTime = 40;
    return ovenTime; // Return the variable
}

/* remainingOvenTime returns the remaining
   minutes based on the actual minutes already in the oven.
*/
int remainingOvenTime(int actualMinutesInOven) {
    // TODO: Calculate and return the remaining in the oven based on the time
    // the lasagna has already been there.

    // Call the ovenTime function to get the total time
    return ovenTime() - actualMinutesInOven;
}

/* preparationTime returns an estimate of the preparation time based on the
   number of layers and the necessary time per layer.
*/
int preparationTime(int numberOfLayers) {
    // The time per layer is typically defined as a constant.
    const int minutesPerLayer = 2; // Common exercise value
    // TODO: Calculate and return the preparation time with the
    // `numberOfLayers`.
    return numberOfLayers * minutesPerLayer;
}

// elapsedTime calculates the total time spent to create and bake the lasagna so
// far.
int elapsedTime(int numberOfLayers, int actualMinutesInOven) {
    // TODO: Calculate and return the total time so far.
    // Call preparationTime and add the actual time in the oven
    return preparationTime(numberOfLayers) + actualMinutesInOven;
}
