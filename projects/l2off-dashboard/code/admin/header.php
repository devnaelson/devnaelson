<?php
header("Access-Control-Allow-Origin: " . $baseUrl . "login");
header("Access-Control-Allow-Origin:  " . $baseUrl . "register");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
