var endpointUrl = "Controller/JarvisApi.ashx?call=";


$("#btnParkingSlotsAddSubmit").click(function () {

    var pObj = new Object();
    pObj.ParkingLotId = $("#txtParkingLotId").val();
    pObj.Price = $("#txtInputPrice").val();
    pObj.VehicleType = $("#ddlVehicleType").val();
    pObj.ParkingCapacity = $("#ddlCapacity").val();

    jQuery.ajax({
        url: endpointUrl + "AddParkingSlots",
        type: 'POST',
        datatype: 'json',
        data: JSON.stringify(pObj),
        success: function (data) {

            data = JSON.parse(data);

            if (data.StatusCode == 200) {

                alert("Saved Succesfully");
            }
            else {
                alert("Not Saved");
            }

            // $("#btnSaveTaxCenter").html(floppy);
        },
        error: function (xhr, textStatus, errorThrown) {


        }
    });
});


LoadParkingSlots();

function LoadParkingSlots() {

    var pObj = new Object();
    //pObj.ParkingLotId = $("#txtParkingLotId").val();
    //pObj.Price = $("#txtInputPrice").val();
    //pObj.VehicleType = $("#ddlVehicleType").val();
    //pObj.ParkingCapacity = $("#ddlCapacity").val();

    jQuery.ajax({
        url: endpointUrl + "GetAllParkingSpots",
        type: 'POST',
        datatype: 'json',
        data: JSON.stringify(pObj),
        success: function (data) {

            data = JSON.parse(data);

            if (data.StatusCode == 200) {

                $.each(data.Data, function (i, item) {

                    var tableRowBuild = " <tr><td>" + data.Data[i].ParkingLotId + "</td><td>" + data.Data[i].Price + "</td><td>" + data.Data[i].VehicleType + "</td><td>" + data.Data[i].ParkingCapacity + "</td><td>" + data.Data[i].CreatedDate + "</td><td><a href='#' class='btn btn-danger btn-circle'><i class='fas fa-trash'></i></a> <a href='#' class='btn btn-danger btn-circle'><i class='fas fa-trash'></i></a></td ></tr > ";

                    $("#tbodyParkingData").append(tableRowBuild);

                });



                console.log(data);

                // alert("Saved Succesfully");
            }
            else {
                alert("Not Saved");
            }

            // $("#btnSaveTaxCenter").html(floppy);
        },
        error: function (xhr, textStatus, errorThrown) {


        }
    });


}