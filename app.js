const fs = require('fs');
const fsPromises = fs.promises;
const http = require('http');
const https = require('https');
const path = require('path');

async function postBody(p) {
  const dir = await fs.promises.readdir(p, { withFileTypes: true });
  const body = { pkg: 'play' };
  const opts = { encoding: 'utf8' };
  for await (const dirent of dir) {
    const file = path.join(p, dirent.name);
    if (path.extname(dirent.name) === '.rego') {
      const rego = await fsPromises.readFile(file, opts);
      body.rego_modules = { 'module.rego': rego.toString() };
    }
    if (dirent.name === 'input.json') {
      const input = await fsPromises.readFile(file, opts);
      const parsedInput = JSON.parse(input);
      body.input = parsedInput;
    }
  }
  return body;
}

function playground(payload) {
  const body = JSON.stringify(payload);
  const request = {
    hostname: 'play.openpolicyagent.org',
    path: '/v1/share',
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'Content-Length': Buffer.byteLength(body),
    }
  }
  return new Promise ((resolve, reject) => {
    let parsedData;
    let req = https.request(request, (res) => {
      res.setEncoding('utf8');
      let rawData = '';
      res.on('data', (chunk) => { rawData += chunk; });
      res.on('end', () => {
        try {
          parsedData = JSON.parse(rawData);
          resolve(parsedData);
        } catch (err) {
          reject(err);
        }
      });
    });

    req.on('error', err => {
      reject(err);
    });

    req.write(body);
    req.end();
  });
}

async function handle(request, response) {
  request.on('error', (err) => {
    console.error(err);
    response.statusCode = 400;
    response.end();
  });
  response.on('error', (err) => {
    console.error(err);
  });
  if (request.method === 'GET') {
    const d = path.join('.', request.url);
    try {
      const  stat = await fsPromises.stat(d);
      if (stat.isDirectory()) {
        const body = await postBody(d);
        const resp = await playground(body);
        response.setHeader('Location', resp.result);
        response.statusCode = 303;
        response.end();
      }
    } catch (err) {
      console.error(err);
      response.statusCode = 404;
      response.end(err.toString());
    }
  } else {
    response.statusCode = 405;
    response.end();
  }
}

http.createServer(handle).listen(3000);
