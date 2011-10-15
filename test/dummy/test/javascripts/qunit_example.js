//sinon.config.useFakeTimers = false;

module("TDD JavaScript, Rails 3.1 and the Asset Pipeline");

test("Are you TDD'ing your JS?", function(){
  expect( 1 );

  var tests = "No tests D:";
  equals( tests, "Lots of tests :D", "How many tests?" );
});

// Use this to test whether or not Sinon is messing with your timers

//asyncTest("timeout should something something", function(){
   //setTimeout(function(){
         //start();
         //ok(true, "Yay!");
   //}, 1);
//});
