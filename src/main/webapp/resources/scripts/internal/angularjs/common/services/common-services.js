'use strict';

var commonServices = angular.module('common-services');

commonServices.factory('AuthenticationSharedService', [ '$rootScope', '$http', function($rootScope, $http) {
		return {
			// GET:- Check authenticate Method
			authenticate : function() {
				// get Call to check authenticate
				$http.get('/api/user/authenticate')
				// Success function
				.success(function(data, status, headers, config) {
					$rootScope.data = data;
					// if Data is Empty
					if (data.username == '') {
						// call when authenticate Need
						$rootScope.$broadcast('event:auth-loginRequired');
					} else {
						// call when authenticate is Not Need
						$rootScope.$broadcast('event:auth-authConfirmed');
					}
				});
			},
			logout: function () {
                $http.get('/app/logout')
                .success(function(data, status, headers, config) {
                	window.location.href="/";
				});
            }
		};
	} ]);
commonServices.factory('Account',function($resource){		
	return $resource('/api/user/account', {},{
		'get': {method:'GET', params:{}, isArray:false},
	});
});

/*Product Service*/
commonServices.factory('ProductService',function($resource){		
	return $resource('/api/product/:id', {id:'@id'},{
		'fetchAll': {method:'GET', params:{}, isArray:true},
		'fetch': {method:'GET', params:{}, isArray:false},
		'save': {method:'POST', params:{}, isArray:false},
		'update': {method:'PUT', params:{}, isArray:false},
		'remove': {method:'DELETE', params:{}, isArray:false},
	});
});

