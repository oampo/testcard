use <missile/missile.scad>

function pass(name) =
    str(name, " passed");

function fail(name, type, value, expected) =
    str(name, " failed.  Got ", value,
        ". Expected to ", type, " ", expected);

function testEqual(name, value, expected) =
    equal(value, expected) ?
    pass(name) :
    fail(name, "equal", value, expected);

function testNotEqual(name, value, expected) =
    (!equal(value, expected)) ?
    pass(name) :
    fail(name, "not equal", value, expected);

function testTrue(name, value) =
    value ?
    pass(name) :
    fail(name, "equal", value, true);

function testFalse(name, value) =
    (!value) ?
    pass(name) :
    fail(name, "equal", value, false);

function testIn(name, value, expected) =
    (contains(expected, value)) ?
    pass(name) :
    fail(name, "be in", value, expected);

function testNotIn(name, value, expected) =
    (!contains(expected, value)) ?
    pass(name) :
    fail(name, "not be in", value, expected);
