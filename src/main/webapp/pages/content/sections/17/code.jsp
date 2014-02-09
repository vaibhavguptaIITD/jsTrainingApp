function Person(name, gender) {
  this.name = gender;
  this.gender = gender;
}

Person.prototype.speak = function(){
	log("Hello " + this.name);
};