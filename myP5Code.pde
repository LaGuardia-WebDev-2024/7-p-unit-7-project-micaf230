PImage heartImg; // Declare the image variable

// 🟢 Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
    frameRate(60);
    heartImg = loadImage("https://cdn.glitch.global/6f32b003-f5fc-4ff9-89cd-fc5bc92d6c5d/pngtree-smooth-glossy-heart-vector-file-ai-and-png-png-image_4557871.png?v=1736868404903"); // Load the heart image
    textAlign(CENTER, CENTER); // Center-align the text
    textSize(24); // Set text size
    fill(255, 0, 0); // Set text color (red)
}

// 🎯 Variable Declarations
var heartX = 20; // Horizontal position of the heart
var heartSize = 50; // Initial size of the heart
var heartGrowing = true; // Boolean to toggle size growth

// 🟢 Draw Procedure - Runs on Repeat
void draw() {
    background(255, 255, 255, 0); // Transparent background

    // 🎯 Draw the heart image
    image(heartImg, heartX, 15, heartSize, heartSize); // Display the heart
    heartX += 2; // Move the heart to the right
    if (heartX > width) heartX = -heartSize; // Reset position when it goes offscreen

    // 🎯 Animation: Size
    if (heartGrowing) {
        heartSize += 0.5; // Increase size
        if (heartSize > 70) heartGrowing = false; // Stop growing at max size
    } else {
        heartSize -= 0.5; // Decrease size
        if (heartSize < 30) heartGrowing = true; // Start growing again at min size
    }

    // 🟢 Add Text
    fill(0, 0, 0); // Set the text color 
    text("Mica Friedman", width / 2, height - 30); // Draw text at the bottom center
}


// 🟡Extra Feature: Show Mouse Position
showXYPositions = function() {
    fill(255, 255, 255);
    rect(270, 300, 150, 100);
    fill(0, 0, 0);
    textSize(15);
    text("x = " + mouseX + "\ny = " + mouseY, 290, 330);
    fill(255, 0, 255);
    ellipse(mouseX, mouseY, 10, 10);
};
