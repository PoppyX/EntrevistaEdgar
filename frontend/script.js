$(() => {
    getData();
});

$('#btnSearch').on('click', () => {
    console.log("Button clicked");
    postData();
});

function postData() {
    var nombre = $('#txtSearch').val();
    $.ajax({
        url: "http://localhost:3000/search",
        type: 'POST',
        crossDomain: true,
        datatype: 'jsonp',
        data: {
            name: nombre
        },
        success: (result) => {
            //console.log(result);
            $('#contactsList').empty();
            for (var r in result) {
                //console.log(result[r]);
                $('#contactsList').append(
                    "<tr>" +
                    "<td>" + result[r]["Nombre completo"] + "</td>" +
                    "<td>" + result[r]["Departamento"] + "</td>" +
                    "<td>" + result[r]["Posición"] + "</td>" +
                    "<td>" + result[r]["Email de la empresa"] + "</td>" +
                    "<td>" + result[r]["Email personal"] + "</td>" +
                    "<td>" + result[r]["# de flota"] + "</td>" +
                    "<td>" + result[r]["Celular personal"] + "</td>" +
                    "</tr>");
            }
        }
    });
}

function getData() {
    $.ajax({
        url: "http://localhost:3000/",
        type: 'GET',
        crossDomain: true,
        datatype: 'jsonp',
        success: (result) => {
            console.log(result);
            for (var r in result) {
                //console.log(result[r]);
                $('#contactsList').append(
                    "<tr>" +
                    "<td>" + result[r]["Nombre completo"] + "</td>" +
                    "<td>" + result[r]["Departamento"] + "</td>" +
                    "<td>" + result[r]["Posición"] + "</td>" +
                    "<td>" + result[r]["Email de la empresa"] + "</td>" +
                    "<td>" + result[r]["Email personal"] + "</td>" +
                    "<td>" + result[r]["# de flota"] + "</td>" +
                    "<td>" + result[r]["Celular personal"] + "</td>" +
                    "</tr>");
            }
        }
    });
}