function fn() {
  var env = karate.env;
  karate.log('karate.env system property was:', env);

  var config = {
    appURL: 'https://reqres.in/'
  };

  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  karate.configure('connectTimeout', 30000);
  karate.configure('readTimeout', 30000);
  return config;
}