# Validation
Standard angularJS validation

I try to use a standard angularJS validation. It seems more comprehensive than I expected.
1. Subject can be empty but cannot longer than 255.
2. Content cannot be empty but cannot longer than 1000.

1. ng-maxlength = "255"  if length>255  contactForm.subject.$invalid = true  show error message
2. ng-maxlength = "1000" if length>1000 contactForm.content.$error.maxlength = true show error message1
   required if length=0 contactForm.content.$error.required = true  show error message2
  
Tip 1: For $submitted, input submit must in <form>.
Tip 2: $submitted is a key to prove that angularjs validation has conflicts with html validation. So we must NOVALIDATE html validation.
Tip 3: ng-click=contractForm.$invalid || ctrl.send()
