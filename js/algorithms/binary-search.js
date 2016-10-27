
function search(target, stack, callback) {
    var min     = stack[0];
    var max     = stack[stack.length - 1];
    var guess   = 0;
    var guesses = 0;

    while (true) {
        guess = Math.floor((min + max) / 2);

        if (stack[guess] === target) {
            return callback(null, {target: target, value: stack[guess], key: guess});
        }

        if (target > stack[guess]) {
            min = guess + 1;
        }
        else {
            max = guess - 1;
        }
    }
}

function range(to) {
    var range = [];

    for (var i = 0; i <= to; i++) {
        range.push(i);
    }

    return range;
}


search(
    20,
    range(50000000),
    function(err, result) {
        console.log(result);
    }
);
