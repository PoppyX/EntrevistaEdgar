const express = require('express');

const app = express();
const http = require('http').Server(app);
const cors = require('cors');
const mssql = require('mssql');
const bodyParser = require('body-parser');

const chalk = require('chalk');
const debug = require('debug');
const path = require('path');
const morgan = require('morgan');
var xlsx = require('xlsx');

var list;

const pool = new mssql.ConnectionPool({
    user: 'sa',
    password: '1q2w3e4r',
    server: 'DESKTOP-EP0HKH7',
    database: 'Entrevista',
    options: {
        encrypt: false // Use this if you're on Windows Azure
    }
})

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(morgan('dev'));
app.set('json spaces', 4);

app.get('/', (request, response) => {
    console.log(list);
    if(list !== undefined){
        console.log("Db Data")
        response.json(list);
    }
    else {
        console.log("Excel Data");
        getExcelData();
        response.json(list)
    }
});

app.post('/search', (request, response) => {
    var name = request.body.name;
    console.log(`Searched value: ${name}`);
    var obj = [];
    var countAdded = 0;
    var countTotal = 0;
    console.log(name);
    for(var r in list) {
        countTotal++;
        var str = list[r]["Nombre completo"];
        if(str.includes(name))
        {
            console.log(`Added: ${str}`);
            obj.push(list[r]);
            countAdded++;
        }
    }
    console.log(`Count added: ${countAdded} ; Count Total: ${countTotal}`)
    console.log(obj);
    response.json(obj);
});

http.listen("3000", () => {
    debug("Listening on port " + chalk.blue("3000"));
    pool.connect((error) => {
        if(error) throw error;
        console.log("Connect");
        const request = new mssql.Request(pool);
        request.query('SELECT CONCAT(C.Nombre, C.Apellido) as "Nombre completo", P.Nombre as "Posición", D.Nombre as "Departamento", C.Email_Compania as "Email de la empresa", C.Email_Personal as "Email personal", C.Tel_Compania as "# de flota", C.Tel_Personal as "Celular personal" FROM Cliente C INNER JOIN Departamento D ON C.DepartamentoId = D.Id INNER JOIN Posicion P ON C.PosicionId = P.Id', 
        (err, result) => {
            if(err) throw err;
            list = result.recordset;
            console.log("Ready");
        });
    });
});

function getExcelData()
{
    const workbook = xlsx.readFile('dirc.xlsx');
    const sheets_name_list = workbook.SheetNames;

    list = xlsx.utils.sheet_to_json(workbook.Sheets[sheets_name_list[0]]);
}
