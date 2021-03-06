# WoodstockWave

![wave-example](wave-example.png)

## Description
In this assignment you will create your own customized animated wave similar to the Wave created by Jerome Herr, here: [https://www.openprocessing.org/sketch/152169](https://www.openprocessing.org/sketch/152169).

## Instructions
PART 1: we set up the circles

1. Fork this repo.
1. paste the starter code from the repo's .pde file into processing
1. fix the code, so it uses a `while` loop to draw a set of concentric (inside each other) circles
1. set your own stroke, fill (noFill?), background, strokeWeight, number of circles, width between circles.
1. tinker with your code until you like the look of the circles.

PART 2: we turn the circles into arcs

1. above (and outside) the `setup()` function, declare two new variables as doubles: `arcStart` and `arcEnd`
1. in the `setup()` function, set their initial values to the _radian_ equivalent of 180 degreees and 360 degrees. (Hint: if you're not familiar with radians, then just use `radians(180)` and `radians(360)` and let Processing do the conversion for you.
1. in the draw function, change the `ellipse` function into an `arc` function and use the `arcStart` and `arcEnd` variables as arguments. You might find it help to look at the reference page for `arc`.
1. run your sketch: you should see something that looks like a rainbow.

PART 3: we make the arcs move

1. now set the `arcEnd`'s initial value to be the same as `arcStart`'s initial value.
2. then in the last line of the draw function, increment `arcEnd` by 0.05
3. run your sketch: you should see a set of arcs wrap around to close themselves.
4. try out other values to see what happens.

PART 4: we make them move like a wave

1. we need a stopping point for the movement. declare a new global (above the setup function) variable called `maxArcEnd` and set its initial value to `TWO_PI`. (THINK ABOUT: What is the appropriate data type for this variable?)
1. in the same way, declare two more global (above setup) variables called `movement` and `speed`. Set the initial value of `movement` to 0.0 and set the initial value of `speed` to `PI/60`.
1. and we'll make the movement bounce like a wave. This part has some math which you don't need to worry about. Just paste this line into the `while` loop in the line above where you draw the arc: `arcEnd = map(sin(movement + (maxArcEnd / num * i)), -1, 1, arcStart, maxArcEnd);`
1. Remember above where you incremented `arcEnd` by 0.05? Replace that line with a line where you increment `movement` by `speed`.
1. test and tinker.

WRAP-UP:

1. Copy your code into your (forked) WoodstockWave repo's `.pde` file
1. Update the header and footer text of `index.html`.
1. Go to the `Settings` page for your repo, and scroll down to the `Pages` section. Change the `Source` to `main`, then click the `save` button.
1. Check your work at `<YourUsername>.github.io/WoodstockWave`. (You can also find this link by scrolling down to the middle of your settings page.)

## Take it further
Optionally, if you're interested in exploring other sketches like this one, check out Jerome Herr's page linked in the credits below. You can click on any of his designs to see them, and then click on the little `</>` button at the top of the page to see the code. 

## Credit
This assignment is based on original work created by [Jerome Herr](https://www.openprocessing.org/user/28663).
