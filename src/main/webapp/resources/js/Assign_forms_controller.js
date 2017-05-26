var app = angular.module('myApp', []);
app.controller('FormsCtrl', function($scope, $http) {
	$scope.sourceList = [ {
		name : "C16430",
		suboptions : [ {
			name : "4CRF/00"
		}, {
			name : "4CRF/01"
		}, {
			name : "4CRF/02"
		} ]
	}, {
		name : "C16530",
		suboptions : [ {
			name : "5CRF/00"
		}, {
			name : "5CRF/01"
		}]
	} ];

});
