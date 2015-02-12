'use strict';

var commonControllers = angular.module('common-controllers');


//Product page controller
commonControllers.controller('ProductController', function($scope, $location,$timeout, $window,ProductService) {
	
	//Init Method
	function init(){
		$scope.currentPage=1;
		$scope.product={};
		$scope.selectedCategoty={};
		$scope.categoryList=[{id:1,name:'Mobiles & Tablets'},{id:2,name:'Electronics & Computers'},{id:3,name:'Vehicles'},{id:4,name:'Home & Furniture'}];
		$scope.onClickValidation=false;
		$scope.categoryError=false;
		$scope.productList=[];
		ProductService.fetchAll(function(data){
			$scope.productList=data;
		});
	}
	//Call init Method
	init();
	
	//Method to Submit Form
	$scope.submitForm=function(bol){
		
		$scope.onClickValidation=!bol;
		var isError=false;
		if(!bol){
			isError=true;
		}
		//If Category not selected
		if(angular.equals({},$scope.selectedCategoty)){
			$scope.categoryError=true;
			isError=true;
		}
		
		if(isError){
			return;
		}
		//set category name
		$scope.product.categoryName=$scope.selectedCategoty;
		//save if new category
		if(!angular.isDefined($scope.product.id)){
			//Call api to Save
			ProductService.save($scope.product,function(data){
				init();
			});
		}
		//update if existing category
		else{
			//Call api to update
			ProductService.update($scope.product,function(data){
				init();
			});
		}
		
	}
	
	//remove Product function
	$scope.removeProduct=function(_product){
		//Open confirm popup
		bootbox.dialog({
		  message: "Are your sure to delete Product ?",
		  title: "Confirm Box",
		  buttons: {
		    success: {
		      label: "Yes",
		      className: "btn-success",
		      callback: function() {
		    	//Call remove service
	    		ProductService.remove({id:_product.id},function(data){
	    			init();
	    		});
		      }
		    },
		    danger: {
		      label: "No",
		      className: "btn-danger",
		    },
		  }
		}); 
	};
	
	//Method to edit product
	$scope.editProduct=function(_product){
		
		$scope.product=angular.copy(_product);
		angular.forEach($scope.categoryList,function(value,inde){
			if(value.name==_product.categoryName){
				$scope.selectedCategoty=value.name;
			}
		});
	};
});

//About page controller
commonControllers.controller('AboutController', function($scope, $location,$timeout, $window) {
	
});
