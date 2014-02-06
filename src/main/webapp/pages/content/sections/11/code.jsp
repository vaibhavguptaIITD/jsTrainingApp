var phonebookEntry = {};

phonebookEntry.name = 'Vaibhav';
phonebookEntry.number = '(555) 555-5555';
phonebookEntry.phone = function() {
  log('Calling ' + this.name + ' at ' + this.number + '...');
};

phonebookEntry.phone();