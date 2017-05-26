var app = angular.module('myApp', [ 'ui.bootstrap' ]);

var modalTemplate = 
		"<div class='modal-header'>"
		+ "<button ng-click='x()'type='button' class='close' data-dismiss='modal'>x</button>"
		+ "<h4 class='modal-title'>Warning!</h4>"
		+ "</div>"
		+ "<div class='modal-body'>Are you sure You want to Delete{{s.id}}</div>"
		+ "<div class='modal-footer'>"
		+ "<button ng-click='cancel()' type='button' class='btn btn-default' data-dismiss='modal'>Close</button>"
		+

		"<button ng-click='delete()' type='button' class='btn btn-danger' data-dismiss='modal'>Delete</button>	</div>";

app.controller('crfCtrl', function($scope, $http, $uibModal) {
	$http.get("list3").then(function(response) {
		$scope.crfNumber = response.data;
	});
	/*
	 * The $http.get method is used to retrieve information from the given
	 * server using a given URI.
	 */
	

	$scope.openDeleteModal = function(id) {
		var modalInstance = $uibModal.open({
			template : modalTemplate,
			controller : 'deleteModalController',
			resolve : {
				id : function() {
					return id;
				}
			}

		});
             modalInstance.result.then(function(Crfid) {  
			
			
		})
	  };

});

app.controller('deleteModalController', function($scope, $http, $uibModalInstance, id) {


	$scope.id = id;
	$scope.delete = function() {
		var body = { CrfId: $scope.id };
		console.log(' deleting', body);
		$http.post('deleteCrf?CrfId=' + $scope.id).then(function(response) {
			console.log('CRF HEREE DELETED');
			$uibModalInstance.close('deleted');	
			location.reload();
		
			
		});
	};
	$scope.cancel = function() {
		$uibModalInstance.dismiss('cancel');

	};
	$scope.x = function() {
		$uibModalInstance.dismiss('x');
	};
});

