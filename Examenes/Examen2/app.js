if ('serviceWorker' in navigator) {
  window.addEventListener('load', () => {
    navigator.serviceWorker.register('sw.js')
      .then(registration => {
        console.log('Service Worker registrado con éxito:', registration);
      })
      .catch(error => {
        console.log('Fallo al registrar Service Worker:', error);
      });
  });
}

async function obtenerListaPendientes() {
  try {
    const response = await fetch('http://jsonplaceholder.typicode.com/todos');
    const data = await response.json();
    return data;
  } catch (error) {
    console.error('Error al obtener la lista de pendientes:', error);
    return [];
  }
}

function filtrarPendientesResueltos(pendientes) {
  return pendientes.filter(pendiente => pendiente.completed);
}

function filtrarPendientesSinResolver(pendientes) {
  return pendientes.filter(pendiente => !pendiente.completed);
}

function obtenerListaIDs(pendientes) {
  return pendientes.map(pendiente => pendiente.id);
}

function obtenerListaIDsYTitulos(pendientes) {
  return pendientes.map(pendiente => ({ id: pendiente.id, title: pendiente.title }));
}

function obtenerListaIDsYUserID(pendientes) {
  return pendientes.map(pendiente => ({ id: pendiente.id, userId: pendiente.userId }));
}

function generarSimboloEspecial(id) {
  return id + '*';
}

function manejarRespuestaServiceWorker(response) {
  console.log('Respuesta del Service Worker:', response);
  if (response instanceof Response) {
    const imagenInterceptada = response.url;
    console.log('Imagen interceptada:', imagenInterceptada);
    document.getElementById('imagenPredeterminada').src = imagenInterceptada;
  }
}

async function ejecutarApp() {
  const pendientes = await obtenerListaPendientes();
  const pendientesResueltos = filtrarPendientesResueltos(pendientes);
  const pendientesSinResolver = filtrarPendientesSinResolver(pendientes);

  const listaIDs = document.getElementById('listaIDs');
  const listaIDsyTitulos = document.getElementById('listaIDsyTitulos');
  const listaSinResolver = document.getElementById('listaSinResolver');
  const listaResueltos = document.getElementById('listaResueltos');
  const listaIDsyUserID = document.getElementById('listaIDsyUserID');
  const listaResueltosUserID = document.getElementById('listaResueltosUserID');
  const listaSinResolverUserID = document.getElementById('listaSinResolverUserID');

  obtenerListaIDs(pendientes).forEach(id => {
    const listItem = document.createElement('li');
    listItem.textContent = id;
    listaIDs.appendChild(listItem);
  });

  obtenerListaIDsYTitulos(pendientes).forEach(pendiente => {
    const listItem = document.createElement('li');
    listItem.textContent = `ID: ${pendiente.id}, Título: ${pendiente.title}`;
    listaIDsyTitulos.appendChild(listItem);
  });

  obtenerListaIDsYTitulos(pendientesSinResolver).forEach(pendiente => {
    const listItem = document.createElement('li');
    listItem.textContent = `ID: ${pendiente.id}, Título: ${pendiente.title}`;
    listaSinResolver.appendChild(listItem);
  });

  obtenerListaIDsYTitulos(pendientesResueltos).forEach(pendiente => {
    const listItem = document.createElement('li');
    listItem.textContent = `ID: ${pendiente.id}, Título: ${pendiente.title}`;
    listaResueltos.appendChild(listItem);
  });

  obtenerListaIDsYUserID(pendientes).forEach(pendiente => {
    const listItem = document.createElement('li');
    listItem.textContent = `ID: ${pendiente.id}, UserID: ${pendiente.userId}`;
    listaIDsyUserID.appendChild(listItem);
  });

  obtenerListaIDsYUserID(pendientesResueltos).forEach(pendiente => {
    const listItem = document.createElement('li');
    listItem.textContent = `ID: ${pendiente.id}, UserID: ${pendiente.userId}`;
    listaResueltosUserID.appendChild(listItem);
  });

  obtenerListaIDsYUserID(pendientesSinResolver).forEach(pendiente => {
    const listItem = document.createElement('li');
    listItem.textContent = `ID: ${pendiente.id}, UserID: ${pendiente.userId}`;
    listaSinResolverUserID.appendChild(listItem);
  });

  const imagenInterceptadaResponse = await fetch('https://upload.wikimedia.org/wikipedia/en/thumb/a/a2/National_Football_League_logo.svg/1200px-National_Football_League_logo.svg.png');
  manejarRespuestaServiceWorker(imagenInterceptadaResponse);

  const idPendienteInterceptado = 1;
  manejarRespuestaServiceWorker(generarSimboloEspecial(idPendienteInterceptado));
}

ejecutarApp();

document.getElementById('seleccionLista').addEventListener('change', function() {
  var selectedOption = this.value;
  var allContent = document.querySelectorAll('.content');
  
  allContent.forEach(function(content) {
    content.style.display = 'none';
  });
  
  document.getElementById(selectedOption).style.display = 'block';
});
