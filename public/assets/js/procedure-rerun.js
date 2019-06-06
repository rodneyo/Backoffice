/**
 * Vincodo LLC
 *
 * Namespace encapsulates methods for adding, saving deleting
 * file mover configurations.  A php daemon reads the table
 * these configs are store in and executes the enabled configs
 */
var ProcReRun = {

    /**
     * Bind events to form elements
     */
    initProcReRun: function()
    {
        $('button[name="submit-job"]').on('click', function() {
            var jobId = $(this).data('submit-job');
            ProcReRun.submitJob(jobId)
        });

        $('button[name="refresh-job"]').on('click', function() {
            ProcReRun.refresh();
        });

        $('[data-toggle="error-tooltip"]').tooltip();

        /**
         * Turn on automatic page refresh when reports are running.
         * Turn if off when all have completed or have problems
         */
        $('table tr td span.status-indicator-show').each(function() {
            if ( $(this).text() == 'Queued' || $(this).text() == 'Running' ) {
                reloadInterval = setInterval('location.reload(true)', 15000);
                return false;
            }
            clearInterval(reloadInterval);
            return false;
        });
    },

    submitJob: function(jobId)
    {
        var url = '/proc-rerun/submit';
        var postData = { "jobId": jobId };

        $.ajax({
            url: url,
            dataType: 'json',
            type: 'post',
            data: postData,

            success: function(result) {
                if (result.hasOwnProperty('error')) {
                    var errorResp = {
                        'status': result.error
                    };

                    Common.errorHandler(errorResp);
                    return;
                }

                if (result.job.status == 'submitted') {
                    window.location.reload();
                    return;
                }

                ProcReRun.handleReturnStatus(result);

            },

            error: function(jqXHR, error, text) {
                return jqXHR;
            }
        });
    },
    
    refresh: function()
    {
        window.location.reload();
    },

    handleReturnStatus: function(result)
    {
        var statusText;

        switch (result.job.status) {
            case 'running':
                statusText = result.job.procedure_display_name + ' reports are currently running.';
                break;

            case 'queued':
                statusText = result.job.procedure_display_name + ' reports have already been queued by ' + result.job.user;
                break;

            default:
                statusText = result.job.procedure_display_name + ' reports encountered an error try to queue to run';
                break;

        }
        statusText = statusText + '  Refresh your browser to get the current status.';
        $('div#info-message').find('span#job-status').text(statusText);
        $('div#info-message').show().fadeOut(8000);
    }
};
