var slideIndex=1;

function plusSlides(n){
	showSlides(slideIndex += n);
}

function currentSlide(n){
	showSlides(slideIndex = n);
}

function showSlides(n){
	
	var  i;
	var slides = document.getElementsByClassName("mySlides");
	var dots = document.getElementsByClassName("dot");
	
	
	if(n > slides.length){
		slideIndex = 1;
	}
	
	if(n < 1){
		slideIndex = slides.length;
	}
	
	for(i = 0; i < slides.length; i++){
		slides[i].style.display="none";
	}
	
	for( i = 0; i < dots.length; i++){
		dots[i].className = dots[i].className.replace(" active","");
	}
	
	slides[slideIndex-1].style.display = "block";
	dots[slideIndex-1].className += " active";
	
	
}

(function(){
  'use strict';
  
  angular
    .module('commentsApp', [])
    .controller('CommentsController', CommentsController);
  
  // Inject $scope dependency.
  CommentsController.$inject = ['$scope'];
  
  // Declare CommentsController.
  function CommentsController($scope) {
    var vm = this;
    
    // Current comment.
    vm.comment = {};

    // Array where comments will be.
    vm.comments = [];

    // Fires when form is submited.
    vm.addComment = function() {
      // Fixed img.
      vm.comment.avatarSrc = 'http://lorempixel.com/200/200/people/';

      // Add current date to the comment.
      vm.comment.date = Date.now();

      vm.comments.push( vm.comment );
      vm.comment = {};

      // Reset clases of the form after submit.
      $scope.form.$setPristine();
    }

    // Fires when the comment change the anonymous state.
    vm.anonymousChanged = function(){
      if(vm.comment.anonymous)
        vm.comment.author = "";
    }
  }

})();


