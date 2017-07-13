<!-- Contact Modal -->
<div class="contact-modal">
	<div class="modal-header">
            <h3 class="modal-title" id="modal-title">New Message</h3>
        </div>
         <form name="contactForm" novalidate>
            <div class="modal-body container-fluid" id="modal-body">
                <div class="form-group" layout-gt-xs="row" layout-wrap>
                    <label flex-gt-xs="20" for="subject">Subject:</label>
                    <input flex-gt-xs="80" class="form-control" name="subject" ng-model="subject" ng-maxlength="255">
                    <span flex-gt-xs="100" class="err-msg" ng-show="contactForm.subject.$invalid">The subject has to be less than 255 characters long.</span>	
                    <label flex-gt-xs="20" class="msg-content" for="content">Content:</label>
                    <textarea flex-gt-xs="80" class="form-control msg-content" rows="13" autocomplete="off" name="content" ng-model="content" ng-maxlength="1000" required></textarea>
                    <span flex-gt-xs="100" class="count-chars" ng-show="content.length > 700">{{content.length}}/1000</span>	
                    <span flex-gt-xs="100" class="err-msg" ng-show="contactForm.content.$error.required && contactForm.$submitted">The message content is required.</span>
                    <span flex-gt-xs="100" class="err-msg" ng-show="contactForm.content.$error.maxlength">The message content has to be less than 1000 characters long.</span>		
                </div>	     
            </div>
            <div class="modal-footer">
                <input class="contact-send-btn ic-btn" type="submit" value="Send" ng-click="contactForm.$invalid || ctrl.send()">
                <button class="contact-cancel-btn ic-btn" type="button" ng-click="ctrl.closeModal()">Cancel</button>
            </div>
        </form>
</div>
