angular.module('demo',[])
.controller('text', function($scope, $http) {

    $http.get('http://10.4.73.133:3014').
	then(function successCallback(response) {
		$scope.texto = response.data;
	}, function errorCallback(response){
		$http.get('http://10.4.17.213:3015',{timeout:1000}).
			then(function successCallback(response) {
			$scope.texto = response.data;
		}, function(response){
            $scope.texto = "No hay conexión";
        });
	});
    
    /*
    $http.get('http://10.4.17.213:3015').
	then(function successCallback(response) {
		$scope.texto = response.data;
	}, function errorCallback(response){
		$http.get('http://10.4.73.133:3014').
			then(function successCallback(response) {
			$scope.texto = response.data;
		});
	});
    */
});

/*
http://localhost:3014
http://10.4.17.213:3015
*/