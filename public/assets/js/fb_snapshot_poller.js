/**
 * Vincodo LLC
 *
 * @type {{getStatus: SnapShotPoller.getStatus}}
 */
var SnapShotPoller = {

    /**
     * Submit the for via ajax and start the poller
     * @constructor
     */
    Init: function() {
        $('form[name="fb_snapshot_form"]').submit(function(event) {
            var formData = $(this);

            $.ajax({
                url: event.target.action,
                type: 'post',
                data: formData.serialize(),

                success: function(response) {
                    $('#snapshot-status').html('');
                    var span = $( document.createElement('span') );
                    $('#snapshot-status').append(span).append('<br />');
                    Common.FacebookSnapShotProgressBar('show');

                    /**
                     * @todo: fix hack.  giving the worker time
                     * to pick up and run before polling
                     */

                    setTimeout(function() {
                        SnapShotPoller.getStatus();
                    }, 5000);
                },

                error: function(jqXHR, textStatus, errorThrown) {
                    SnapShotPoller.getStatus();
                    Common.FacebookSnapShotProgressBar();
                    alert(errorThrown);
                }
            });

            event.preventDefault();
        })
    },

    /**
     * Poll the snapshot log and update the UI console
     */
    getStatus: function() {

        $.ajax({
            url: '/fb-snapshot/getstatus',
            context: document.body,
            dataType: 'json',

            success: function(response) {
                var doPoll = true;

                // Clear out any previous log details
                $('#snapshot-status').html('');

                /**
                 * iterate over the log entries and output them
                 * stop when the job has ended
                 * @todo: need something to stop polling after a certain amount of time
                 */
                $.each(response, function(index, value) {

                    var span = $( document.createElement('span') );

                    // > -1 = 'job-ended' string found
                    if (value.indexOf('job-ended') > -1) {
                        Common.FacebookSnapShotProgressBar();
                        doPoll = false;
                        return false;
                    }

                    if (value.indexOf('ERROR') > -1 || value.indexOf('CRITICAL') > -1) {
                        span.addClass('console-output-error').html(value);
                        $('#snapshot-status').append(span).append('<br />');

                        doPoll = false;
                        Common.FacebookSnapShotProgressBar();
                        return false;
                    }

                    span.addClass('console-output-status').html(value);
                    $('#snapshot-status').append(span).append('<br />');

                });

                if (doPoll) {
                    setTimeout(SnapShotPoller.getStatus, 5000);
                };
            },

            error: function(jqXHR, textStatus, errorThrown) {

                var span = $( document.createElement('span') );

                span.addClass('console-output-error').html(errorThrown);
                Common.FacebookSnapShotProgressBar();
                $('#snapshot-status').append(span).append('<br />');
            }
        });
    }
}
