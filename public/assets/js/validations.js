$(document).ready(function () {
    // Initialize the validation plugin
    $('#email-form').validate({
        rules: {
            name: {
                required: true,
            },
            email: {
                required: true,
                email: true,
            },
            phone: {
                // Add validation rules for the phone field if needed
            },
            message: {
                required: true,
            },
        },
        messages: {
            name: {
                required: 'Please enter your full name',
            },
            email: {
                required: 'Please enter your email address',
                email: 'Please enter a valid email address',
            },
            phone: {
                // Add validation messages for the phone field if needed
            },
            message: {
                required: 'Please enter a message',
            },
        },
        submitHandler: function (form) {
            // This function will be called when the form is valid and submitted.
            // You can submit the form using AJAX here if needed.
            form.submit();
        },
    });
});
