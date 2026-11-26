<?php
$path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

header('Content-Type: text/plain; charset=utf-8');

if ($path === '/healthz') {
    echo "ok\n";
    exit;
}

echo "Hello from openFuyao PHP S2I sample!\n";
