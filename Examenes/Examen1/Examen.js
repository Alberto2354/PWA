const readline = require('readline');
const url = 'https://jsonplaceholder.typicode.com/todos'
const responseData = fetch(url).then(response => response.json())
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});



let salir = false;

function mostrarMenu() {
    console.log("Menú: ");
    console.log("1. Lista de todos los pendientes (solo IDs)");
    console.log("2. Lista de todos los pendientes IDs y Titles");
    console.log("3. Lista de todos los pendientes sin resolver (ID y Title)");
    console.log("4. Lista detodos los pendientes resuletos (ID y Title)");
    console.log("5. Lista de todos los pendientes (IDs y userID)");
    console.log("6. Lista de todos los pendientes resueltos (ID y userID)");
    console.log("7. Lista de todos los pendientes sin resolver (ID y userID)");
    console.log("8. Salir");
}

function obtenerOpcion() {
    rl.question("Ingrese el número de la opción que desea: ", (opcion) => {
        opcion = parseInt(opcion);
        if (isNaN(opcion)) {
            console.log("Por favor, ingresa un número válido.");
            mostrarMenu();
            obtenerOpcion();
            return;
        }

        switch (opcion) {
            case 1:
                console.log("Lista de todos los pendientes (solo IDs)");
                regresarAlMenu();
                responseData.then(data => {
                    data.forEach(item => {
                        console.log("id:", item.id);
                        console.log("--------");
                      });
                })
                .catch(error => console.error('Error fetching data:', error));
                console.log("----------------------------------------------------");
                break;

            case 2:
                console.log("Lista de todos los pendientes IDs y Titles");
                regresarAlMenu();
                responseData.then(data => {
                    data.forEach(item => {
                        console.log("id:", item.id);
                        console.log("Title:", item.title);
                        console.log("--------");
                      });
                })
                .catch(error => console.error('Error fetching data:', error));
                console.log("----------------------------------------------------");
                break;

                case 3:
                console.log("Lista de todos los pendientes sin resolver (ID y Title)");
                regresarAlMenu();
                responseData.then(data => {
                    const Incomplete = data.filter(item => !item.completed);
                    Incomplete.forEach(item => {
                        console.log("id:", item.id);
                        console.log("Title:", item.title);
                        console.log("--------");
                      });
                })
                .catch(error => console.error('Error fetching data:', error));
                console.log("----------------------------------------------------");
                break;

                case 4:
                console.log("Lista detodos los pendientes resuletos (ID y Title)");
                regresarAlMenu();
                responseData.then(data => {
                    const Incomplete = data.filter(item => item.completed);
                    Incomplete.forEach(item => {
                        console.log("id:", item.id);
                        console.log("Title:", item.title);
                        console.log("--------");
                      });
                })
                .catch(error => console.error('Error fetching data:', error));
                console.log("----------------------------------------------------");
                break;

                case 5:
                console.log("Lista de todos los pendientes (IDs y userID)");
                regresarAlMenu();
                responseData.then(data => {
                    data.forEach(item => {
                        console.log("id:", item.id);
                        console.log("userId:", item.userId);
                        console.log("--------");
                      });
                })
                .catch(error => console.error('Error fetching data:', error));
                console.log("----------------------------------------------------");
                break;

                case 6:
                console.log("Lista de todos los pendientes resueltos (ID y userID)");
                regresarAlMenu();
                responseData.then(data => {
                    const Incomplete = data.filter(item => item.completed);
                    Incomplete.forEach(item => {
                        console.log("id:", item.id);
                        console.log("userId:", item.userId);
                        console.log("--------");
                      });
                })
                .catch(error => console.error('Error fetching data:', error));
                console.log("----------------------------------------------------");
                break;

                case 7:
                console.log("Lista de todos los pendientes sin resolver (ID y userID)");
                regresarAlMenu();
                responseData.then(data => {
                    const Incomplete = data.filter(item => !item.completed);
                    Incomplete.forEach(item => {
                        console.log("id:", item.id);
                        console.log("userId:", item.userId);
                        console.log("--------");
                      });
                })
                .catch(error => console.error('Error fetching data:', error));
                console.log("----------------------------------------------------");
                break;

            case 8:
                console.log("Saliendo...");
                salir = true;
                rl.close();
                break;

            default:
                console.log("Opción no válida. Por favor, ingresa un número válido.");
                regresarAlMenu();
                break;
        }
    });
}

function regresarAlMenu() {
    rl.question("Escriba 'R' para regresar al Menú", (response) => {
        if (response.toUpperCase() === 'R') {
            mostrarMenu();
            obtenerOpcion();
        } else {
            console.log("Respuesta no válida. Inténtalo de nuevo.");
            regresarAlMenu();
        }
    });
}

rl.on('close', () => {
    if (!salir) {
        console.log("Saliendo del programa...");
    }
    process.exit(0);
});

mostrarMenu();
obtenerOpcion();
