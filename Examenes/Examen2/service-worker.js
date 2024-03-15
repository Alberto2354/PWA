self.addEventListener('fetch', event => {
    if (event.request.url.includes('.jpg') || event.request.url.includes('.png')) {
        event.respondWith(fetch('https://upload.wikimedia.org/wikipedia/en/thumb/a/a2/National_Football_League_logo.svg/1200px-National_Football_League_logo.svg.png'));
    }
});

self.addEventListener('fetch', event => {
    if (event.request.url.includes('jsonplaceholder.typicode.com/todos')) {
        event.respondWith(
            fetch(event.request)
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Error al obtener los pendientes');
                    }
                    return response.json();
                })
                .then(data => {
                    const modifiedData = data.map(todo => ({
                        id: `${todo.id}#`, // Agregar un símbolo especial como se especifica
                        userId: todo.userId,
                        title: todo.title,
                        completed: todo.completed
                    }));
                    return new Response(JSON.stringify(modifiedData), {
                        headers: {'Content-Type': 'application/json'}
                    });
                })
                .catch(error => new Response(error.message, {status: 500}))
        );
    }
});

self.addEventListener('install', event =>{
    console.log("SW: Instalando el service worker")
    const installing =  new Promise((resolve, reject) =>{
        setTimeout (()=>{
            console.log("SW: instalacion finalizada!")   
        }, 1000);
        self.skipWaiting();
        resolve();
    });
    
    event.waitUntil(installing);
});

self.addEventListener('activate', event =>{
    console.log("SW: service worker Activo!");
});
