/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//function checkName(elem) {
//    if (elem.value.search(/[<>&\=;"'.?//]/ig) !== -1 ||
//            elem.value==="")
//        return 0;
//    else
//        return 1;
//}
//
//function checkLocation(elem) {
//    if (elem.value.search(/([<>&\=;"'.?//])|(\d)/ig) !== -1 ||
//            elem.value==="")
//        return 0;
//    else
//        return 1;
//}
//
//function checkNumber(elem) {
//    if (elem.value.search(/^(\d{10,11})+/ig) === -1 ||
//            elem.value==="")
//        return 0;
//    else
//        return 1;
//}
//
//function checkEmailAdd(elem) {
//    if (elem.value.search(/([<>])/ig) !== -1 ||
//            elem.value==="")
//        return 0;
//    else
//        return 1;
//}
//
//function checkContactPerson(elem) {
//    if (elem.value.search(/([<>~`!@#$%\^&*\(\)_\-\+\=\{\}\[\]:;"',.?//])|([a-zA-Z])/ig) !== -1 ||
//            elem.value==="")
//        return 0;
//    else
//        return 1;
//}


//function checkInput2(id) {
//    if ($("#description").value.search(/[<>~`!@#$%\^&*\(\)_\-\+\=\{\}\[\]:;"',.?//]/ig) !== -1) {
//        $.ajax({
//            type: "POST",
//            url: "HandleItem?action=error",
//            data: $(".add-items-form").serialize(),
//            success: function(html) {
//                $("#description").value = "";
//                $("#error").show();
//                $("#error").text("Special characters not allowed in description. Please rewrite.");
//            }
//        });
//    } else if ($("#name").value.search(/([<>~`!@#$%\^&*\(\)_\-\+\=\{\}\[\]:;"',.?//])|(\d{1,})/ig) !== -1) {
//        $.ajax({
//            type: "POST",
//            url: "HandleItem?action=error",
//            data: $(".add-items-form").serialize(),
//            success: function(html) {
//                $("#name").value = "";
//                $("#error").show();
//                $("#error").text("Special characters not allowed in name. Please rewrite.");
//            }
//        });
//    } else if ($("#unitofmeasure").value.search(/[<>~`!@#$%\^&*\(\)_\-\+\=\{\}\[\]:;"',?//]|(\b[.]{2})/ig) !== -1) {
//        $.ajax({
//            type: "POST",
//            url: "HandleItem?action=error",
//            data: $(".add-items-form").serialize(),
//            success: function(html) {
//                $("#unitofmeasure").value = "";
//                $("#error").show();
//                $("#error").text("Special characters not allowed in unit of measure. Please rewrite.");
//            }
//        });
//    } else if (id >= 0) {
//        $("#error").hide();
//        $("#error").text("");
//        editItem(id);
//    } else if (id == -1) {
//        $("#error").hide();
//        $("#error").text("");
//        addItem();
//    }
//}

//function checkInput(id, form) {
//    var url = "";
//    if (id == -1 && (!checkName($("#name").val())
//            || !checkLocation($("#location").val())
//            || !checkNumber($("#number").val())
//            || !checkEmailAdd($("#emailadd").val())
//            || !checkContactPerson($("#contactperson").val()))) {
//        error = true;
//        url = "HandleSupplier?action=add&error=yes";
//    } else if (id != -1 && (!checkName($("#name").val())
//            || !checkLocation($("#location").val())
//            || !checkNumber($("#number").val())
//            || !checkEmailAdd($("#emailadd").val())
//            || !checkContactPerson($("#contactperson").val()))) {
//        error = true;
//        url = "HandleSupplier?action=edit&error=yes&id=" + id;
//    }
//
//    if (error) {
//        $.ajax({
//            type: "POST",
//            url: url,
//            data: $(".add-supplier-form").serialize(),
//            success: function(html) {
////                $("#name").value = "";
////                error = true;
//                $("#error").text("Please input the correct entries.");
//                $("#error").show();
//                if (!checkName($("#name").val()))
//                    $("#name").css();
//                if (!checkLocation($("#location").val()))
//                    $("#location").css();
//                if (!checkNumber($("#number").val()))
//                    $("#number").css();
//                if (!checkEmailAdd($("#emailadd").val()))
//                    $("#emailadd").css();
//                if (!checkContactPerson($("#contactperson").val()))
//                    $("#contactperson").css();
//            }
//        });
//
//    } else if (id >= 0 && !error) {
//        error = false;
//        $("#error").text("");
//        editSupplier(id);
//    } else if (id == -1 && !error) {
//        error = false;
//        $("#error").text("");
//        addSupplier();
//    }
//}

$(document).ready(function() {
    var id, status;
//    console.log('yoohoo');
    $('#itemlist').hide();
    tableshown = false;
    rowcount = 0;
    $('#requestsmodal').on('show.bs.modal', function(event) {
//        console.log('yoohoo');
        var trigger = $(event.relatedTarget);
        var verdict = trigger.data('verdict');
        var modal = $(this);
        id = event.relatedTarget.id;
        status = id.substr(0, 1);
//        console.log(trigger);
//        console.log(verdict);

        if (verdict === 'approve') {
            modal.find('.modal-title').text("Are you sure you want to approve this request?");
            modal.find('.modal-footer').append('<button type="button" id = "approve-yes" class="btn btn-primary" data-dismiss="modal">Yes</button>'
                    + '<button type="button" class="btn btn-default" data-dismiss="modal">No</button>');
        } else if (verdict === 'reject') {
            if (status === "o")
                modal.find('.modal-title').text("Are you sure you want to cancel this request?");
            else
                modal.find('.modal-title').text("Are you sure you want to decline this request?");
            modal.find('.modal-footer').append('<button type="button" id = "reject-yes" class="btn btn-primary" data-dismiss="modal">Yes</button>'
                    + '<button type="button" class="btn btn-default" data-dismiss="modal">No</button>');
        }
    });

    $('#requestsmodal').on('hide.bs.modal', function(event) {
        var modal = $(this);
        modal.find('.modal-footer').empty();
    });

//    $('#deliveriesmodal').on('show.bs.modal', function(event){
//        var trigger = $(event.relatedTarget);
//        var verdict = trigger.data('verdict');
//        var modal = $(this);
//        
//        if(verdict==='cancel'){
//            modal.find('.modal-title').text("Are you sure you want to cancel this delivery?");
//            modal.find('.modal-footer').append('<button type="button" id="cancel-yes" class="btn btn-primary" data-dismiss="modal">Yes</button>'
//                    + '<button type="button" class="btn btn-default" data-dismiss="modal">No</button>');
//        }
//    });
//        
//    $('#deliveriesmodal').on('hide.bs.modal', function(event) {
//        var modal = $(this);
//        modal.find('.modal-footer').empty();
//    });

    $('#itemsmodal').on('show.bs.modal', function(event) {
        var trigger = $(event.relatedTarget);
        var verdict = trigger.data('verdict');
        var modal = $(this);

        id = event.relatedTarget.id;
        if (verdict === 'delete') {
            modal.find('.modal-title').text("Are you sure you want to delete this item?");
            modal.find('.modal-footer').append('<button type="button" id="yes-delete" class="btn btn-primary" name="' + id + '" data-dismiss="modal">Yes</button>'
                    + '<button type="button" class="btn btn-default" data-dismiss="modal">No</button>');
        }
    });

    $('#itemsmodal').on('hide.bs.modal', function(event) {
        var modal = $(this);
        modal.find('.modal-footer').empty();
    });

    $('#suppliersmodal').on('show.bs.modal', function(event) {
        var trigger = $(event.relatedTarget);
        var verdict = trigger.data('verdict');
        var modal = $(this);

        id = event.relatedTarget.id;
        if (verdict === 'delete') {
            modal.find('.modal-title').text("Are you sure you want to delete this supplier?");
            modal.find('.modal-footer').append('<button type="button" id="yes-delete" class="btn btn-primary" name="' + id
                    + '" data-dismiss="modal">Yes</button><button type="button" class="btn btn-default" data-dismiss="modal">No</button>');
            deleteyes = false;
        }
    });

    $('#suppliersmodal').on('hide.bs.modal', function(event) {
        var modal = $(this);
        if (deleteyes)
            modal.find('.modal-footer').empty();
    });

    $('#warehousesmodal').on('show.bs.modal', function(event) {
        var trigger = $(event.relatedTarget);
        var verdict = trigger.data('verdict');
        var modal = $(this);

        if (verdict === 'delete') {
            modal.find('.modal-title').text("Are you sure you want to delete this warehouse?");
            modal.find('.modal-footer').append('<button type="button" class="btn btn-primary" data-dismiss="modal">Yes</button>'
                    + '<button type="button" class="btn btn-default" data-dismiss="modal">No</button>');
        }
    });

    $('#warehousesmodal').on('hide.bs.modal', function(event) {
        var modal = $(this);
        modal.find('.modal-footer').empty();
    });

    $('#addrequestmodal').on('show.bs.modal', function(event) {
        var trigger = $(event.relatedTarget);
        var verdict = trigger.data('verdict');
        var rowcount = trigger.data('item');
        var modal = $(this);

        if (verdict === 'delete') {
            modal.find('.modal-title').text("Are you sure you want to delete this entry?");
            modal.find('.modal-footer').append('<button type="button" class="btn btn-primary" id="rowdelete" data-dismiss="modal"'
                    + 'data-item="' + rowcount + '">Yes</button>'
                    + '<button type="button" class="btn btn-default" data-dismiss="modal">No</button>');
        }
    });

    $('#addrequestmodal').on('hide.bs.modal', function(event) {
        var modal = $(this);
        modal.find('.modal-footer').empty();
    });

    $('#viewitemsmodal').on('show.bs.modal', function(event) {
        var trigger = $(event.relatedTarget);
        var verdict = trigger.data('verdict');
        var modal = $(this);

        id = event.relatedTarget.id;
        if (verdict === 'delete') {
            modal.find('.modal-title').text("Are you sure you want to delete this item?");
            modal.find('.modal-footer').append('<button type="button" id="yes-delete-item" class="btn btn-primary" name="' + id + '" data-dismiss="modal">Yes</button>'
                    + '<button type="button" class="btn btn-default" data-dismiss="modal">No</button>');
        }
    });

    $('#viewitemsmodal').on('hide.bs.modal', function(event) {
        var modal = $(this);
        modal.find('.modal-footer').empty();
    });

    $('#viewsuppliersmodal').on('show.bs.modal', function(event) {
        var trigger = $(event.relatedTarget);
        var verdict = trigger.data('verdict');
        var modal = $(this);

        id = event.relatedTarget.id;
        if (verdict === 'delete') {
            modal.find('.modal-title').text("Are you sure you want to delete this supplier?");
            modal.find('.modal-footer').append('<button type="button" id="yes-delete-supplier" class="btn btn-primary" name="' + id + '" data-dismiss="modal">Yes</button>'
                    + '<button type="button" class="btn btn-default" data-dismiss="modal">No</button>');
        }
    });

    $('#viewsuppliersmodal').on('hide.bs.modal', function(event) {
        var modal = $(this);
        modal.find('.modal-footer').empty();
    });

    $('#usersmodal').on('show.bs.modal', function(event) {
        var trigger = $(event.relatedTarget);
        var verdict = trigger.data('verdict');
        var modal = $(this);

        id = event.relatedTarget.id;
        if (verdict === 'delete') {
            modal.find('.modal-title').text("Are you sure you want to delete this user?");
            modal.find('.modal-footer').append('<button type="button" id="yes-delete" class="btn btn-primary" name="' + id + '" data-dismiss="modal">Yes</button>'
                    + '<button type="button" class="btn btn-default" data-dismiss="modal">No</button>');
        }
    });

    $('#usersmodal').on('hide.bs.modal', function(event) {
        var modal = $(this);
        modal.find('.modal-footer').empty();
    });

//    $(document).on('click', '.delete-button', function(event){
////        var index = parseInt($(this).attr('data-item'));
//        var table = document.getElementById('itemlist');
////        $(this).parent().delete();
//        var row = $(this).parent();
//        row.parent().removeChild(row);
//        rowcount--;
//        if(rowcount==0)
//            table.hide();
//    });

    $(document).on('click', '#approve-yes', function(e) {
        var passData = {"id": id, "resp": "In Transit"};
        $.ajax({
            type: "POST",
            url: "HandleRequest?action=respond",
            data: passData,
            success: function(html) {
                $("a[id=" + id + "]").remove();
                $(".s" + id.substr(1, id.length)).html("In Transit");
            }
        });
    });

    $(document).on('click', '#reject-yes', function(e) {
        var passData = {"id": id, "resp": "Declined"};
        $.ajax({
            type: "POST",
            url: "HandleRequest?action=respond",
            data: passData,
            success: function(html) {
                $("a[id=" + id + "]").remove();
                $(".s" + id.substr(1, id.length)).html("Declined");
            }
        });
    });

    $(document).on('click', "#view-items", function(e) {
        var target = $("#req");
        target.val("http://localhost:8080/_PROSDEV__Jollibee_Inventory_Tracking/ViewItems?token=" + $("#token").val());
    });

    $(document).on('click', "#view-item-info", function(e) {
        var target = $("#req");
        target.val("http://localhost:8080/_PROSDEV__Jollibee_Inventory_Tracking/ViewItems?token=" + $("#token").val() + "&id=<ID#>");
    });

    $(document).on('click', "#view-requests", function(e) {
        var target = $("#req");
        target.val("http://localhost:8080/_PROSDEV__Jollibee_Inventory_Tracking/ViewRequests?token=" + $("#token").val());
    });

    $(document).on('click', "#view-suppliers", function(e) {
        var target = $("#req");
        target.val("http://localhost:8080/_PROSDEV__Jollibee_Inventory_Tracking/ViewSuppliers?token=" + $("#token").val());
    });

    $(document).on('click', "#view-supplier-info", function(e) {
        var target = $("#req");
        target.val("http://localhost:8080/_PROSDEV__Jollibee_Inventory_Tracking/ViewSuppliers?token=" + $("#token").val() + "&id=<ID#>");
    });

    $(document).on('click', "#view-warehouses", function(e) {
        var target = $("#req");
        target.val("http://localhost:8080/_PROSDEV__Jollibee_Inventory_Tracking/ViewWarehouses?token=" + $("#token").val());
    });

    $(document).on('click', "#submit-request", function(e) {
        var val = $('#req').val();
        
        location.href = val;
    });
});

