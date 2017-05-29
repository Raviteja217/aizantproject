angular.module('userDetails', ['ui.bootstrap']);
app.controller('userCtrl', function($scope, $http, $log, $window, $location) {
	var userpin = $location.search().pin;
	$http.get('user?pin=' + userpin).then(function(response) {
		$scope.user = response.data;
		$scope.pinNumber = $scope.user.pin.length;;
		$scope.$watch("pinNumber", function(newPin, pin) {
			var pin = $scope.user.pin;
			var newPin = newV;
			if (pin === newPin) {
				$scope.user.push();
			}
		
		});
	
});
});
