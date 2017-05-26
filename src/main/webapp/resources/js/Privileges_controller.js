var myApp = angular.module('myApp',[]);
myApp.controller('PrivilegesCtrl',function ($scope) {
                $scope.countries = {
                    'C16430': {
                        '4CRF/00': ['Az_Form_1', 'Az_Form_2'],
                        '4CRF/01': ['Az_Form_5', 'Az_Form_6', 'Az_Form_7'],
                        '4CRF/02': ['Az_Form_8']
                    },
                    'C16530': {
                        '5CRF/00': ['Az_Form_9', 'Az_Form_10'],
                        '5CRF/01': ['Az_Form_11']
                       
                    }
                    
                };
  
  
            });