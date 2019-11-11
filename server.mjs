/* eslint-disable no-console */
/* eslint-disable import/no-extraneous-dependencies */
import finalhandler from 'finalhandler';
import http from 'http';
import serveStatic from 'serve-static';

const serve = serveStatic('demo-app');

const requestListener = (req, res) => serve(req, res, finalhandler(req, res));
const server = http.createServer(requestListener);
server.listen(3000);

console.log('\n--------------------------------------------');
console.log('  Server started at http://localhost:3000/');
console.log('--------------------------------------------');
