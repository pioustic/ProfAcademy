var services = angular.module('services', ['pouchdb']);
services.factory('simpleDB', function(pouchdb) {
  return pouchdb.create('simpleDB');
});

var app = angular.module('app', ['pouchdb', 'services']);
app.controller('dbController', ['$scope', 'simpleDB', dbController]);

function dbController($scope, db) {
  $scope.db = db;
  $scope.items = [];

  $scope.db.allDocs({ include_docs: true }).then(function(result){
    var tmp_items = [];
    for (row in result.rows) {
      tmp_items.push(result.rows[row].doc.content);
    }
    $scope.items = tmp_items;
  }).catch(function(error){
    console.log(error);
  })

  $scope.content = { "_id": generateId(), "content": "please enter your content" };

  $scope.put = function() {
    $scope.db.put($scope.content).then(function(result){
      $scope.items.push($scope.content.content);
    })
    .catch(function(error){
      console.log(error);
    })
      .finally(function() {
      $scope.content = { "_id": generateId(), "content": "please enter your content" };
    });
  };
};

function generateId() {
  return new Date().getTime().toString();
}