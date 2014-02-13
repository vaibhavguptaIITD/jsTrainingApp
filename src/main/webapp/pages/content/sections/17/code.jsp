function Person(name, gender) {
  this.name = name;
  this.gender = gender;
}

Person.prototype.speak = function(){
	log("Hello " + this.name);
};