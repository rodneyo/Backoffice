/**
 * Vincodo LLC
 *
 * Namespace encapsulates methods for adding, saving deleting
 * file mover configurations.  A php daemon reads the table
 * these configs are store in and executes the enabled configs
 */
var FileMover = {

    /**
     * Dynamically assigned function to
     * disable click action on the job play button when
     * the "disable" job toggle is set
     */
    FileMover: runJobEnableOnClick = function() {
        var id = $(this).data('file-mover-id');
        $(this).removeClass('run-single-job-ico-disabled-color');
        FileMover.runMoverJob(id);
    },

    /**
     * Bind events to form elements
     */
    initFileMover: function()
    {
        $('button#add-file-mover').on('click', FileMover.addMoverConfig);
        $('button#run-all').on('click', FileMover.runAll);

        $('.info-btn').on('click', '#file-mover-config-table', function() {
            this.popover('show');
        });

        $('.file-mover-edit-ico').on('click', function() {
            var id = $(this).data('file-mover-id');
            FileMover.edit(id);
        });

        $('.file-mover-delete-ico').on('click', function() {
            var id = $(this).data('file-mover-id');
            FileMover.showDeleteConfirm(id);
        });

        $('input[type="checkbox"]').each(function() {
            var id = $(this).data('file-mover-id');
            var fileMoverPlayIco = '#single-job-run-' + id;

            if ( $(this).is(':checked') ) {
                $(fileMoverPlayIco).on('click', runJobEnableOnClick);

            } else {
                FileMover.disableRunJobPlayButtons(fileMoverPlayIco);
            }

        });

        $('form[name="add-edit-file-mover"]').on('submit', FileMover.save)

        $('form[name="delete-config-form"]').on('submit', FileMover.delete)

        $('table#file-mover-config-table').on('input', 'td', function() {
            $(this).find('input[type="text"]').val('you have changed Phil!');
            var parentTr = $(this).parentElement; //@todo is this being used
        });

        // Refresh page on close of modal
        $('button[data-dismiss]').on('click', function() {
            window.location.reload();
        });

        // Bind on change to toggle
        $('input[type="checkbox"]').on('change', function() {

            var id = $(this).data('file-mover-id');
            var singleJobPlayIconId = '#single-job-run-' + id + '.file-mover-play-ico';
            var singleJobPlayIcon = $(singleJobPlayIconId);

            if ($(this).prop('checked')) {
                var status = 'on';
                FileMover.enableRunJobPlayButtons(singleJobPlayIcon)

            } else {
                var status = 'off';
                FileMover.disableRunJobPlayButtons(singleJobPlayIcon)
            }

            FileMover.updateRunStatus(id, status);
        });
    },

    /**
     * Initiate an Add of a mover config
     */
    addMoverConfig: function()
    {
        $('input:hidden[name="file_mover_id"]').val(null);
        FileMover.clearForm();
        FileMover.showAddEditModal();
    },

    /**
     * Set properties to disable the single job run
     * play button on initial load or action
     *
     * @param singleJobPlayIcon
     */
    disableRunJobPlayButtons: function(singleJobPlayIcon) {
        $(singleJobPlayIcon).prop('disabled', true);
        $(singleJobPlayIcon).removeClass('run-single-job-ico-enabled-color');
        $(singleJobPlayIcon).addClass('run-single-job-ico-disabled-color');
        $(singleJobPlayIcon).removeClass('cursor-pointer');
        $(singleJobPlayIcon).off('click');
    },

    /**
     *  Edit Mode - find a specific mover config and show it in the modal
     * @param id
     */
    edit: function(id)
    {
        $.ajax({
            url: '/file-mover/edit/' + id,
            dataType: 'json',
            type: 'get',

            success: function(result) {
                if (result.hasOwnProperty('error')) {
                    var errorResp = {
                        'status': result.error
                    };

                    FileMover.ajaxErrorHandler(errorResp)
                    return
                }

                $('input[name="from_directory"]').val(result.from_directory);
                $('input[name="file_string_match"]').val(result.file_string_match);
                $('input[name="to_directory"]').val(result.to_directory);
                $('input[name="to_filename"]').val(result.to_filename);
                //$('input[name="run_time"]').val(result.run_time);
                $('input[name="run_time"]').val(Common.formatRunTime(result.run_time));
                $('input[name="user"]').val(result.user);
                $('input:hidden[name="file_mover_id"]').val(result.id);

                FileMover.showAddEditModal();
            },

            error: function (jqXHR, error, text) {
                switch (jqXHR.status) {
                    case 401:
                        alert('Error 401');
                        break;

                    case 403:
                        alert('Error 403');
                        break;
                }

                return jqXHR;
            }
        });

    },

    /**
     * Set properties to enable the single job run
     * play button on initial load or action
     *
     * @param singleJobPlayIcon
     */
    enableRunJobPlayButtons: function(singleJobPlayIcon) {
        $(singleJobPlayIcon).prop('disabled', false);
        $(singleJobPlayIcon).addClass('cursor-pointer');
        $(singleJobPlayIcon).addClass('run-single-job-ico-enabled-color');
        $(singleJobPlayIcon).on('click', runJobEnableOnClick);
    },

    /**
     * Deletes a row
     * @param event
     */
    delete: function(event)
    {
        event.preventDefault();
        var postData = $(this).serializeArray();
        var postAction = $(this).attr('action');

        $.ajax({
            url: postAction,
            dataType: 'json',
            type: 'post',
            data: postData,

            success: function(result) {
                if (result.hasOwnProperty('error')) {
                    var errorResp = {
                        'status': result.error
                    };

                    FileMover.ajaxErrorHandler(errorResp)
                    return
                }

                var deletedRow = 'tr[data-file-mover-config-row="' + result.deleted_id + '"]';

                $('#confirm-delete').modal('hide');
                $(deletedRow).addClass('deleted-row');
                $(deletedRow).fadeOut(1000);
                /**
                 * remove tr by id
                 */

            },

            error: function (jqXHR, error, text) {
                FileMover.ajaxErrorHandler(jqXHR);
                return jqXHR;
            }
        });

    },

    /**
     * Force all jobs to run at the next run interval
     * interval = 1 minute
     */
    runAll: function() {
        var runAllMsg = $('#run-all-info-msg');
        $.ajax({
            url: 'file-mover/run-all',
            dataType: 'json',
            type: 'post',

            success: function(result) {
                if (result.hasOwnProperty('error')) {
                    var errorResp = {
                        'status': result.error
                    };

                    FileMover.ajaxErrorHandler(errorResp)
                    return
                }

                $(runAllMsg).show().fadeOut(5000);
            },
            error: function(jqXHR, error, text) {
                FileMover.ajaxErrorHandler(jqXHR);
                return jqXHR;
            }
        });

    },

    runMoverJob: function(id) {
        var runJobId = '#run-job-msg-id-' + id;
        $(runJobId).removeAttr('style'); // remove any styling that will prevent the label from showing on subsequent clicks

        $.ajax({
            url: '/file-mover/run-single-job/' + id,
            dataType: 'json',
            type: 'get',

            success: function(result) {
                if (result.hasOwnProperty('error')) {
                    var errorResp = {
                        'status': result.error
                    };

                    FileMover.ajaxErrorHandler(errorResp)
                    return
                }

                $(runJobId).css('visibility', 'visible').fadeOut(6000);
            },

            error: function (jqXHR, error, text) {
                FileMover.ajaxErrorHandler(jqXHR);
                return jqXHR;
            }
        });
    },

    /**
     * Show confirmation dialog for config deletion.
     * Assign the config id to the hidden variable
     * @param id
     */
    showDeleteConfirm: function(id)
    {
        var context = FileMover.getDeleteModalContext();
        $(context).find('input:hidden[name="file_mover_id"]').val(id);

        $.ajax({
            url: '/file-mover/confirm-delete/' + id,
            dataType: 'json',
            type: 'get',

            success: function(result) {
                if (result.hasOwnProperty('error')) {
                    var errorResp = {
                        'status': result.error
                    };

                    FileMover.ajaxErrorHandler(errorResp)
                    return
                }

                $('#confirm-delete').modal('show');
            },

            error: function (jqXHR, error, text) {
                FileMover.ajaxErrorHandler(jqXHR);
                return jqXHR;
            }
        });
    },

    /**
     * Save new or updated file mover configuration
     * @param event
     */
    save: function(event)
    {
        event.preventDefault();
        $('.validation-error').hide();
        var postData = $(this).serializeArray();
        var postAction = $(this).attr('action');

        $.ajax({
            url: postAction,
            dataType: 'json',
            type: 'post',
            data: postData,

            success: function(result) {
                if (result.hasOwnProperty('validation_error')) {
                    FileMover.validationErrorHandler(result)
                    return
                }

                $('.save-success').show().fadeOut(6000);

                if ( result.status == 'insert') {
                    fileMover.clearForm();
                }
            },

            error: function (jqXHR, error, text) {
                FileMover.ajaxErrorHandler(jqXHR);
                return jqXHR;
            }
        });
    },

    /**
     * Enable or Diable the run of a mover config
     * @param id
     */
    updateRunStatus: function(id, status)
    {
        var postData = {
            'file_mover_id': id,
            'file_mover_status': status
        };

        $.ajax({
            url: '/file-mover/status',
            dataType: 'json',
            type: 'post',
            data: postData,

            success: function(result) {
                if (result.hasOwnProperty('error')) {
                    //@todo don't create a proper error response
                    alert('We have error');
                    return;
                }
            },

            error: function (jqXHR, error, text) {
                FileMover.ajaxErrorHandler(jqXHR)
                return jqXHR;
            }
        });

    },

    clearForm: function()
    {
        $('form').find('.form-control').val('');
        var currentDate = new Date;

        var currentTime = currentDate.getHours() + ':' + currentDate.getMinutes();
        $('input:text[name="run_time"]').val(currentTime);
    },

    showAddEditModal: function()
    {
        $('#add-edit-modal').modal('show');
    },

    getDeleteModalContext: function()
    {
        return $('div#confirm-delete');
    },

    /**
     * Display validation errors to UI
     * @param result
     */
    validationErrorHandler: function(result)
    {
        if (result.validation_error.hasOwnProperty('from_directory')) {
            $('div#from-directory-error.validation-error span').html(FileMover.cleanString(result.validation_error.from_directory));
            $('div#from-directory-error.validation-error').show();
        }

        if (result.validation_error.hasOwnProperty('file_string_match')) {
            $('div#file-string-match-error.validation-error span').html(FileMover.cleanString(result.validation_error.file_string_match));
            $('div#file-string-match-error.validation-error').show();
        }

        if (result.validation_error.hasOwnProperty('to_directory')) {
            $('div#to-directory-error.validation-error span').html(FileMover.cleanString(result.validation_error.to_directory));
            $('div#to-directory-error.validation-error').show();
        }

        if (result.validation_error.hasOwnProperty('to_filename')) {
            $('div#to-filename-error.validation-error span').html(FileMover.cleanString(result.validation_error.to_filename));
            $('div#to-filename-error.validation-error').show();
        }
    },

    cleanString: function(str)
    {
        return String(str).replace('"" ', '');
    },

    /**
     * Handle app errors
     * @param errorResp
     */
    ajaxErrorHandler: function(errorResp)
    {
        $('.modal').modal('hide');

        switch (errorResp.status) {
            case 401:
                alert('Error 401');
                break;

            case 403:
                alert('Error 403');
                break;

            default:
                $('span.app-error-text').html(errorResp.status);
        }

        $('.app-error-alert').show();
    }
};
