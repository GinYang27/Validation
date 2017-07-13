/**
 * Profile Contact Modal Controller
 */
(function() {
      'use strict';

      angular
          .module('app')
          .controller('ContactModalController', ContactModalController);

      ContactModalController.$inject = ['$scope','$uibModalInstance', 'userId', 'profileService', 'alertModalService'];

      function ContactModalController($scope, $uibModalInstance, userId, profileService, alertModalService) {
        var self = this;

      self.closeModal = closeModal;
      self.send = send;

      /**
       * Close modal
       */
      function closeModal() {
        $uibModalInstance.dismiss('cancel');
      }

      function send() {
        profileService.contact(userId, $scope.subject, $scope.content).then(success, failed);
        function success() {
          alertModalService.openAlertModal('success', true, 'Your message has been sent.');
          $uibModalInstance.dismiss('cancel');
        }
        function failed() {
          alertModalService.openAlertModal('error', true, 'Sorry, your message did not send successfully. Please try again');
        }	
      }
    }
})();
