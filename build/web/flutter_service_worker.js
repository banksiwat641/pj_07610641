'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "40f8367b2978fdca5cab150c322b3b70",
"assets/assets/images/above%2520the%2520time.jpg": "7d6c948bed1ff83c9e85998b2f35ca63",
"assets/assets/images/Ah%2520puh.jpg": "3654ce56de14048c0322daca8252bbb3",
"assets/assets/images/Autumn%2520morning.jpg": "bcabe4ca6b3842e43292c6f30b0a1b74",
"assets/assets/images/BBIBBI.jpg": "c0cf81f232e8c37ff4b96ed542290b12",
"assets/assets/images/bgIU.jpg": "0e4434cb70427bf52dc39ec8c581e929",
"assets/assets/images/Blueming.jpg": "80630377c205499ea1bc39326d0aff76",
"assets/assets/images/Celebrity.jpg": "540ea8015e30cd0f28da617450bab06c",
"assets/assets/images/Dear%2520Name.jpg": "96ebe585e13ca460d815b59eeef283b5",
"assets/assets/images/Dlwlrma.jpg": "dca92569f6b0185c21e51cbac3d1976f",
"assets/assets/images/eight.jpg": "196917135ee4265da2a41a01718de565",
"assets/assets/images/Ending%2520Scene.png": "75f705b11bba9bee1d8947834db68064",
"assets/assets/images/Every%2520End%2520of%2520the%2520Day.jpg": "f3a8baa054748f09c17aa719d8a5538b",
"assets/assets/images/Give%2520You%2520My%2520Heart.jpg": "5daac61e943202a3836937522eaf1350",
"assets/assets/images/Good%2520Day.jpg": "7d51585a99314b4d747828b84e56cc3c",
"assets/assets/images/Hold%2520My%2520Hand.jpg": "6cba00681cbecad0a3b226ce7b78520c",
"assets/assets/images/Jam-Jam.jpg": "77bf4a29e4aa88c61ae0155262031df8",
"assets/assets/images/Lilac.jpg": "8785548aff5343619a93a8a64477867a",
"assets/assets/images/Love%2520Poem.jpg": "0818a5daa9af64a0e7bcbc43ce710abd",
"assets/assets/images/My%2520Old%2520Story.jpg": "9de1330882020e970fae314de6cca619",
"assets/assets/images/My%2520sea.jpg": "25b0413517469fa82a6ae3692bfaa569",
"assets/assets/images/next%2520stop.jpg": "2bcd3506c55a21064cdd810447037a2b",
"assets/assets/images/Our%2520Happy%2520Ending.jpg": "566731d385a208fb4cd9fbe03443a89c",
"assets/assets/images/Palette.jpg": "1fe3f14241f1071ae633e02cf1bae971",
"assets/assets/images/strawberry%2520moon.jpg": "4db89da89e1c8d55c9b2f48c45ea4b46",
"assets/assets/images/Through%2520the%2520Night.jpg": "222ed912650c23cdd9ce72da412860d2",
"assets/assets/images/Twenty%2520Three.png": "4e04c2809fbbb804637a8ffe2665237f",
"assets/assets/images/Winter%2520Sleep.jpg": "8afab882f7654ff77141cdb28fae618e",
"assets/assets/sound/above%2520the%2520time.mp3": "5232538b97626a94f9644c866d506d31",
"assets/assets/sound/Ah%2520puh.mp3": "8757bda152c7a001e8000161a6a7d95b",
"assets/assets/sound/Autumn%2520morning.mp3": "ba0e5181e6347b9a69b619ff710d06d4",
"assets/assets/sound/BBIBBI.mp3": "1947437e34a93887eb2902a42957915a",
"assets/assets/sound/Blueming.mp3": "1df1d3c0803407009044ac6df43d13ad",
"assets/assets/sound/Celebrity.mp3": "ff8591b45404edf9bbbd7edcc771f936",
"assets/assets/sound/Dear%2520Name.mp3": "b4462199a953b299e0fbc41cb4b9724e",
"assets/assets/sound/Dlwlrma.mp3": "e5aad8e4df8cbad18492c52ae03fd2ec",
"assets/assets/sound/eight.mp3": "b0532b2e93dce720fd3969011874903c",
"assets/assets/sound/Ending%2520Scene.mp3": "e602ab8951fa4717551f7a732df456f7",
"assets/assets/sound/Every%2520End%2520of%2520the%2520Day.mp3": "82fc582ea167a1045140e7787c68eb9a",
"assets/assets/sound/Give%2520You%2520My%2520Heart.mp3": "d85a8f05a20b227c516aabcfa79eb767",
"assets/assets/sound/Good%2520Day.mp3": "d7c531bf6d4ba65c60a0b0a5524157d1",
"assets/assets/sound/Hold%2520My%2520Hand.mp3": "fa64be78ae58b829a4e93ad93399794b",
"assets/assets/sound/Jam%2520Jam.mp3": "b147e37ffaa502e20b03cb9c8c74a4fc",
"assets/assets/sound/Lilac.mp3": "569809062b7271650dbe6ee6ce035bf1",
"assets/assets/sound/Love%2520Poem.mp3": "5e6ec087a609a19693006827ac93b486",
"assets/assets/sound/My%2520Old%2520Story.mp3": "75e6daa02bff443b54e6442e82398017",
"assets/assets/sound/My%2520sea.mp3": "2abe6c06fe727e19e9d1d91ea333adb6",
"assets/assets/sound/next%2520stop.mp3": "4d6c0bb5605705cb36ad92703b714cd1",
"assets/assets/sound/Our%2520Happy%2520Ending.mp3": "ef57d1911bd595ebcc56439768ca77b2",
"assets/assets/sound/Palette.mp3": "1c42db9babc644d20380df9cd1f7ff3c",
"assets/assets/sound/strawberry%2520moon.mp3": "aa96d206136ffdedb76c9ed63bcf749b",
"assets/assets/sound/Through%2520the%2520Night.mp3": "3c456d8ce9838a4c032f82f8d1bfc0b0",
"assets/assets/sound/Twenty%2520Three.mp3": "a3cff57e9832f17243463e4a0c4b8d0b",
"assets/assets/sound/Winter%2520Sleep.mp3": "96bba20bb80ce0cd2a72f758f6df55dd",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "cb9d7358553a36dfedaca5b405e49206",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "8db05d08bb9ff0cfe1a8e3a9ca51e5f0",
"/": "8db05d08bb9ff0cfe1a8e3a9ca51e5f0",
"main.dart.js": "23b43603ff4d7c20d5e50a31a0621ca4",
"manifest.json": "89358d59bb8e98c7d2b085421ae77bd5",
"version.json": "6e6311605ea78106a28686eaee63eb56"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
