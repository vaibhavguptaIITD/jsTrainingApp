function Person(name, gender) {
  this.name = gender;
  this.gender = gender;
  this.speak = function(){
   log("Hello " + this.name);
  };
}

var me = new Person("Vaibhav", "M");
me.speak();