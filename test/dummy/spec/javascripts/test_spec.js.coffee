# describe( "it failse" , function(){
#   it( "should have spelled fails right" , function(){
#     expect( false ).toBeTruthy();
#   });
# });

describe "TDD JavaScript, Rails 3.1 and the Asset Pipeline", ->
  it "Are you TDD'ing your JS?", ->
    tests = "no tests D:"
    expect( tests ).toBe('lots of tests :D')
