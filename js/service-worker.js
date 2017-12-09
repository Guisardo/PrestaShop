var CACHE_NAME = 'ropitas-cache-v1.3.0';
/*
var urlsToCache = [
  '/'
];
*/
self.addEventListener('install', function(event) {
  // Perform install steps
  /*
    event.waitUntil(
    caches.open(CACHE_NAME)
      .then(function(cache) {
        console.log('Opened cache');
        return cache.addAll(urlsToCache);
      })
    );
  */
});
self.addEventListener('fetch', function(event) {
  event.respondWith(
    caches.match(event.request)
      .then(function(response) {
        // Cache hit - return response
        if (response) {
          return response;
        }

        // IMPORTANT: Clone the request. A request is a stream and
        // can only be consumed once. Since we are consuming this
        // once by cache and once by the browser for fetch, we need
        // to clone the response.
        var fetchRequest = event.request.clone();

        return fetch(fetchRequest).then(
          function(response) {
            // Check if we received a valid response
            var shouldExclude = true;
            if (/\.jpg|\.png|\.gif|\.css|\.js|\.eot|\.svg|\.ttf|\.woff|\.html/i
                  .test(event.request.url)) {
              shouldExclude = false;
            } else if (/css\?/.test(event.request.url)) {
              shouldExclude = false;
            } else if (/shipping\.php|socialrating/.test(event.request.url)) {
              shouldExclude = false;
            }
            if (/service-worker\.js/) {
              shouldExclude = true;
            }
            if (shouldExclude || !response ||
                response.status !== 200 || response.type !== 'basic') {
              return response;
            }

            // IMPORTANT: Clone the response. A response is a stream
            // and because we want the browser to consume the response
            // as well as the cache consuming the response, we need
            // to clone it so we have two streams.
            var responseToCache = response.clone();

            caches.open(CACHE_NAME)
              .then(function(cache) {
                cache.put(event.request, responseToCache);
              });

            return response;
          }
        );
      })
    );
});
