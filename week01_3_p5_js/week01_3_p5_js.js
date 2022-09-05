function setup() {
    initializeFields();
    createCanvas(500, 500);
}

function draw() {
    background(color(0xA0, 0xAF, 0x9F));
    fill(color(0x4C, 0x72, 0x86));
    rect(100, 100, 100, 150);
    rect(mouseX, mouseY, 100, 150);
}

function initializeFields() {
}
