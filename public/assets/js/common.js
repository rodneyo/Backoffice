/**
 *
 * Class encapsulating common functions used across the application
 */

var Common = {
    /**
     * Handle app errors
     * @param errorResp
     */
    errorHandler: function(errorResp)
    {
        $('.modal').modal('hide');

        switch (errorResp.status) {
                case 401:
                        alert('Error 401');
                        break;

                case 403:
                        alert('Error 403');
                        break;

                case 'jobMissing':
                        alert("This job can not be found");
                        break;

                default:
                        $('span.app-error-text').html(errorResp.status);
        }

        $('.app-error-alert').show();
    },

    /**
     * show a progress bar while the snapshot is running
     * @param status
     * @constructor
     */
    FacebookSnapShotProgressBar: function(status)
    {
        var progressBar = $('#snapshot-execution-progress-bar');

        if (status == 'show') {
            $(progressBar).show();
            return;
        }

        $(progressBar).hide();
    },

    /**
     * Format the numeric runtime into a 4 digit HH:MM string for the
     * time picker tool
     * @param timeInt
     * @returns {string}
     */
    formatRunTime: function(timeInt) {
        if (timeInt.length < 4) {
            timeInt = '0' + timeInt;
        }
        var hour = timeInt.slice(0,2);
        var min = timeInt.slice(2);

        return  hour + ':' + min;
    }
};
